# Interior Website 2 — Maison Atelier

Premium interior design studio website. Single page, no build step.

## Open it
Double-click `index.html` (opens in Chrome / Edge). Everything loads from this folder.

## Folder
```
index.html                  the whole site (HTML + CSS + JS in one file)
images/                     photos (Pexels) + hero/film poster frames
videos/4196.mp4             hero background video (compressed, 1080p)
videos/3110.mp4             "Step inside" film section
videos/26757.mp4            chandelier video behind the quote
get-photos-and-videos.bat   re-downloads images/videos if the folders are ever lost
```

## Deploy
Upload the whole folder as-is to any static host (Netlify drag-and-drop, Vercel, cPanel, Hostinger).
Keep `images/` and `videos/` next to `index.html`.

## Before launch — replace placeholders
- Studio name "Maison Atelier" (logo, footer, title)
- `[Project Name]`, `[City]` on the six work cards
- Address, email, phone, budget ranges in the contact section
- Swap stock photos for the client's own project photos (same file names, or update the `src` paths)
- Connect the enquiry form to Formspree / your backend (see the `#enquiry` submit handler at the bottom of `index.html`)

## Media licenses
Photos: Pexels License · Videos: Mixkit Stock Video Free License — both free for commercial use, no attribution required.
