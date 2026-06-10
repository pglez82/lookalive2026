# Look Alive — Sailboat for Sale

A simple, beautiful single-page website advertising the **Westerly Centaur 26 "Look Alive"** for sale.

## Deployment

This site is designed for **GitHub Pages** — just push the files and enable Pages in your repository settings.

### Quick deploy to GitHub Pages

```bash
# 1. Create a new GitHub repo (e.g. yourname/look-alive)
# 2. Push the files:
git init
git add index.html images.json Pictures/ generate-gallery.sh README.md
git commit -m "Initial: Look Alive sailboat listing"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/look-alive.git
git push -u origin main

# 3. In GitHub: Settings → Pages → Source: Deploy from a branch → main / (root)
```

## How the Gallery Works

The gallery is **dynamic** — it reads from `images.json`, not from hardcoded HTML.

### Adding/removing photos

**Option A: Edit `images.json` directly**

Just add or remove filenames from the JSON array:

```json
["IMG_1442.JPG", "new-photo.JPG", "IMG_1619.JPG"]
```

**Option B: Run the helper script**

```bash
# After adding/removing files from the Pictures/ folder:
bash generate-gallery.sh
```

This regenerates `images.json` from whatever's in the `Pictures/` directory.

### Important

- The hero image (`IMG_1612.JPG`) is always excluded from the gallery — it's used at the top of the page.
- Only `.JPG` and `.JPEG` files are included.
- Place all photos in the `Pictures/` folder.

## Customization

- **Hero image**: Change `IMG_1612.JPG` in `index.html` (search for `HERO_FILE`)
- **Colors**: Edit the CSS custom properties in `:root` at the top of `<style>`
- **Contact info**: Search for `jerome` or `+351` in the HTML

## Tech

- Pure HTML, CSS, JavaScript — no dependencies
- Google Fonts (Cormorant Garamond + Inter)
- Responsive design with mobile-first approach
- Lightbox with keyboard navigation (← → Esc)
- Scroll animations and section navigation dots
