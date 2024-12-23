{
  projectRootFile = "flake.nix";

  programs = {
    deadnix = {
      enable = true;
    };
    nixfmt.enable = true;
    shfmt = {
      enable = true;
      indent_size = 4;
    };
    statix.enable = true;
  };

  settings = {
    global.excludes = [
      "*.editorconfig"
      "*.envrc"
      "*.gitconfig"
      "*.git-blame-ignore-revs"
      "*.gitignore"
      "*.gitattributes"
      "*CODEOWNERS"
      "*LICENSE"
      "*flake.lock"
    ];
  };
}
