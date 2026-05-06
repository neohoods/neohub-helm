# neohub-helm

Helm chart for [NeoHoods Hub](https://github.com/neohoods/neohub-app).

## Layout

- [`charts/neohoods-hub`](charts/neohoods-hub) — Helm chart deploying the Hub stack (Postgres + backend + frontend + ingress + GitHub App secret).

## Releasing

`main` push triggers `helm/chart-releaser-action` (see [`.github/workflows/release.yml`](.github/workflows/release.yml)). The chart index is published as a GitHub Pages site under this repo.

Image tags inside `charts/neohoods-hub/values.yaml` are bumped by the `update-helm` action in [`neohub-app`](https://github.com/neohoods/neohub-app) on every release.
