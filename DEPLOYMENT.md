# Deployment guide

ASTROCARE is a static site. No build step or server-side API is required.

## GitHub Pages
1. Create a GitHub repository, for example `astrocare`.
2. Upload the contents of this folder (ensure `index.html` is at the repository root).
3. Open **Settings → Pages**.
4. Under Build and deployment, choose **Deploy from a branch**.
5. Select `main` and `/ (root)`, then Save.
6. Wait for the Pages URL to appear and open it on desktop and mobile.

## Netlify
1. Sign in to Netlify and choose **Add new site → Deploy manually**.
2. Drag the `ASTROCARE` folder into the deployment drop zone, or connect the GitHub repository.
3. No build command is needed; publish directory is `/` (the repository root).
4. Open the generated site URL and test navigation, local storage and exports.

## Before sharing
- Reset demo data and confirm the DEMO DATA banner is visible.
- Do not upload real personal health records or private astronaut data.
- Keep the NASA non-endorsement and prototype limitations visible.
- Browser localStorage is per browser/device and does not sync between users.
- Google Fonts are optional; core functionality does not depend on them.


## Windows quick launch
Extract the project folder, then double-click `START_ASTROCARE.bat`. It starts a local Python HTTP server and opens Chrome at `http://127.0.0.1:8765`. Keep the server terminal open while using the app. If Python is unavailable, use `OPEN_IN_CHROME.bat` to open the standalone `index.html` file.
