# nvim-diff.yazi

This allows you to select a file, move the cursor to highlight another file, then open them in Neovim with `nvim -d selectedFile highlightedFile`

Nix Home-manager example:

1. Run `nix-prefetch-git "https://github.com/kirpy0x/nvim-diff.yazi.git"` and note the **Rev** and **sha256** fields
2. Add the below config and replace the rev and hash for the most up-to-date version.

```nix
programs.yazi.plugins.nvim-diff = pkgs.fetchFromGitHub {
    owner = "kirpy0x";
    repo = "nvim-diff.yazi";
    rev = "ee5c759633edf09025c8ce9d014609676adc33da";
    hash = "sha256-TXOCpDzhAFwD4HKI+ITWyoFfsnSPh5/IAkDWX+7lisc=";
};
```
