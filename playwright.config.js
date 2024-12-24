const { defineConfig } = require('@playwright/test')

module.exports = defineConfig({
  testDir: 'e2e-tests',
  webServer: {
    command: 'npm run start',
    url: 'http://localhost:8080',
    reuseExistingServer: !process.env.CI,
  },
})