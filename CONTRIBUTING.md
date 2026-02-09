# Contributing

1. Fork and clone the repo.
2. Create a feature branch from latest `bugzilla-1`.
3. Install deps: `npm install`.
4. Run checks locally: `npm run lint && npm run test`.
5. Open a PR with a clear description. Follow the PR template.
6. Keep PRs small and focused.

## Commit Messages
- Use concise, imperative style: "Add math utils", "Fix CI".
- Reference issues when applicable.

## Code Style
- ESLint + Prettier enforced. Run `npm run lint:fix` and `npm run format`.

## Tests
- Place tests in `__tests__/` with `.test.js` suffix.

