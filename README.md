# Astro site template

Create a repository from this template, open it in the devcontainer, and run:

```sh
./init.sh
```

The initializer derives the site name from the Git origin, prepares the package
metadata and starter README, removes the default Astro favicon, and commits the
initialized scaffold. Rebuild the devcontainer afterward.

## Design workflow

1. Fill in `concept.md` with a description of the product or concept.
2. Prompt your AI agent: "Use the design-prototyping skill and create N prototypes."
3. Work with the agent to create and refine prototypes until the design is finalized.

## Deployment configuration

Set the `DEPLOY_TARGET` repository variable to `cf_pages` or `gh_pages`. Leaving
it unset skips deployment.

Cloudflare Pages deployments require these repository secrets:

- `CLOUDFLARE_ACCOUNT_ID`
- `CLOUDFLARE_PROJECT_ID`
- `CLOUDFLARE_PAGES_API_TOKEN`
