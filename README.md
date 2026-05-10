# Town of Walkersville (TOW) - Archive Portal

## Project Context
In 2026, the main Town of Walkersville website was migrated to a new CivicPlus platform. During this migration, the legacy Drupal CSS and styling dependencies for the standalone historical meeting archive were lost, causing the archive to render as broken, unstyled HTML. 

This project is a targeted UI restoration. It strips out the dead CivicPlus/Drupal dependencies and replaces them with a self-contained, modernized layout that matches the 2025 "heritage" branding, while preserving 100% of the underlying C# backend logic that serves the historical `.mp4` meeting files.

## Architecture & Deployment
This project is designed as a **Drop-In UI Replacement**. 
- It does **not** require IIS Application Pool modifications.
- It does **not** alter the existing `web.config` routing.
- It does **not** change the local `Meeting Recordings/` directory structure.

### Deployment Instructions
To deploy updates to the live TOW production server:
1. Copy `index.aspx`, `archive-styles.css`, and the `files/` directory.
2. Paste and overwrite the existing files in the live IIS `wwwroot` directory.
3. No server restart is required.

## Local Development
To run this locally, ensure the repository is hosted via local IIS (e.g., `localhost:8123`). 

**Note on Video Files:** The historical video files are massive and are intentionally ignored by Git (`.gitignore` includes `Meeting Recordings/`). To fully test the video player locally, you must manually copy a subset of the `.mp4` folders from the production server into a local `Meeting Recordings/` directory.