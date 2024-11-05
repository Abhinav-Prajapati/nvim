-- Add this inside your plugins configuration file
return {
  {
    "dsznajder/vscode-es7-javascript-react-snippets",
    run = function()
      vim.fn.system("yarn install --frozen-lockfile && yarn compile")
    end,
  },
}
