# katelynlangley.dev

Katelyn Langley’s personal portfolio, built with Astro and Tailwind CSS.

The canonical root experience is a full-browser Desktop Garden workspace: a large About window spans two rows beside authentic Tavern Playhouse and Cody’s Crayons project windows, then becomes a single-column stack on mobile. Katelyn’s toolbox stays inside About, and direct email is the primary action.

The site ships matching SVG and PNG Desktop Garden favicons. There are no prototype routes or prototype switcher.

## Development

```sh
pnpm install
pnpm dev
```

The local site is available at `http://localhost:4321`.

## Production build

```sh
pnpm build
pnpm preview
```

Astro writes the static site to `dist/`.

## Deployment

The deployment workflow reads the `DEPLOY_TARGET` GitHub repository variable:

- `cf_pages` deploys to Cloudflare Pages and requires `CLOUDFLARE_ACCOUNT_ID`, `CLOUDFLARE_PROJECT_ID`, and `CLOUDFLARE_PAGES_API_TOKEN` secrets.
- `gh_pages` deploys to GitHub Pages.
- An unset value skips deployment.
