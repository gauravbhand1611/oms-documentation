#!/bin/bash
     # Script to apply Vale fixes, log issues, commit changes, and push to a new branch

     # Ensure Vale and jq are installed
     if ! command -v vale &> /dev/null; then
         echo "Vale is not installed. Please install it first."
         exit 1
     fi
     if ! command -v jq &> /dev/null; then
         echo "jq is not installed. Installing with Homebrew..."
         brew install jq
     fi

     # Set the default branch name
     DEFAULT_BRANCH="user-guides-pub"

     # Create a new branch for Vale fixes
     BRANCH_NAME="vale-fixes-$(date +%Y%m%d-%H%M%S)"
     git checkout -b "$BRANCH_NAME"

     # Run Vale and generate a JSON report
     vale --output=JSON . > vale-report.json

     # Check if there are any issues
     if [ ! -s vale-report.json ]; then
         echo "No Vale issues found. Exiting."
         git checkout "$DEFAULT_BRANCH"
         git branch -d "$BRANCH_NAME"
         exit 0
     fi

     # Create a log file for issues
     echo "Vale issues found:" > vale-issues.log
     changes_made=false

     # Process each file and its issues
     while IFS= read -r file_entry; do
         file=$(echo "$file_entry" | jq -r '.[0]')
         issues=$(echo "$file_entry" | jq -c '.[1][]')
         while IFS= read -r issue; do
             line_num=$(echo "$issue" | jq -r '.Line // "unknown"')
             check=$(echo "$issue" | jq -r '.Check // "unknown"')
             message=$(echo "$issue" | jq -r '.Message // "unknown"')
             action_name=$(echo "$issue" | jq -r '.Action.Name // ""')
             suggestion=$(echo "$issue" | jq -r '.Action.Params[0] // ""')
             if [ -n "$action_name" ] && [ "$action_name" = "replace" ] && [ -n "$suggestion" ] && [ "$file" != "unknown" ]; then
                 # Apply the replacement fix
                 echo "Applying fix in $file at line $line_num: $message"
                 sed -i '' "${line_num}s/\b$(echo "$issue" | jq -r '.Match')\b/$suggestion/" "$file"
                 echo "$file:$line_num: $check - $message (fixed with '$suggestion')" >> vale-issues.log
                 changes_made=true
             else
                 # Log non-fixable issues
                 echo "$file:$line_num: $check - $message" >> vale-issues.log
             fi
         done <<< "$issues"
     done < <(jq -c 'to_entries | .[] | [ .key, .value ]' vale-report.json)

     # Check for changes
     if [ "$changes_made" = false ]; then
         echo "No fixable changes to commit. See vale-issues.log for details."
         git add vale-issues.log
         git commit -m "Log Vale grammar and style issues for manual review" || {
             echo "No changes to commit. Exiting."
             git checkout "$DEFAULT_BRANCH"
             git branch -d "$BRANCH_NAME"
             exit 0
         }
     else
         # Commit changes
         git add .
         git commit -m "Apply Vale fixes for grammar and style errors"
     fi

     # Push the branch to GitHub
     git push origin "$BRANCH_NAME"

     echo "Branch $BRANCH_NAME created and pushed with Vale fixes. See vale-issues.log for details."