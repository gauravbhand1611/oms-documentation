# Agents.md

This file defines the behavior and instructions for the Codex-based documentation agent.

## Purpose

The agent should:

1. \*\*Process \*\***`vale-report.json`**

   * Read and parse the JSON output from Vale (produced via `vale --output=JSON  vale-report.json`).
   * Extract all reported alerts and action items.
   * For any alert that corresponds to a simple replacement (e.g., a single-word swap, punctuation fix), automatically generate and apply the change or propose the exact replacement in patch form.
   * For alerts that require more nuance (complex rephrasing, context-aware suggestions), generate a clear, human-readable suggestion describing what and why to change.

2. **Target Files**

   * Only operate on files under the `documents/` folder at the repository root.

     * If the prompt specifies further which folder to analyze within the documents folder (ex. Learn OMS) then only focus on that folder, or else the task size may exceed your capacity.
   * Ignore other root-level files (e.g., `.vale.ini`, GitHub workflows, config files), unless a specific alert or instruction explicitly references them.
   * Don't try to replace json paths, URLs, or proper nouns. Skip those even if Vale suggests a fix.

## Workflow

1. **Initialization**

   * Load and validate `vale-report.json`.
   * Identify all files and line numbers with alerts.

2. **Automated Fixes**

   * For alerts tagged with a clear `match` and `replacement` field in the Vale JSON, apply the replacement directly in the source file.
   * Output a diff or patch snippet showing the change.

3. **Suggestive Feedback**

   * For alerts without a direct replacement rule:

     * Suggest a rephrased line based on the suggestion provided by Vale.

4. **Reporting**

   * After processing, create a pull request with all of the lines changed for a human to review.

## Agent Configuration

* **Paths**

  * Documentation root: `documents/`
  * Vale JSON report: `vale-report.json`

* **Skipping**

  * Do not modify any files outside `documents/`.
  * If an alert references a root-level config, note it but do not apply changes.

* **Output**

  * Save diffs to `vale-fixes.patch` for automated changes.
  * Write human suggestions to `agent-suggestions.md`.

---

*End of Agents.md*
