# BugZilla PR Reviews Playground

This is a small Node.js playground to practice PR reviews, CI checks, and test automation.

### Getting Started
```bash
npm install
npm test
npm run lint
npm run format:check
```

### Scripts
- **test**: run Jest tests
- **test:watch**: run tests in watch mode
- **lint**: run ESLint
- **lint:fix**: auto-fix ESLint issues
- **format**: apply Prettier formatting
- **format:check**: check formatting without writing

### CI
GitHub Actions runs lint and tests on pushes and PRs to `bugzilla-1`.

### Sample Code
See `utils/math.js` and tests in `__tests__/math.test.js`.
