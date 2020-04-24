{
  nixpkgs ? import ./nix {}
}:
with nixpkgs.pkgs;
with lib;
with builtins;
let
  # rootFolder = toString ./.;

  # ghcide = (import (fetchTarball "https://github.com/cachix/ghcide-nix/tarball/master") {}).ghcide-ghc865;
  # all-hies = import (fetchTarball "https://github.com/infinisil/all-hies/tarball/master") {};
  # hies = (all-hies.selection { selector = p: { inherit (p) ghc865 ; }; });
  # haskell = nixpkgs.haskellPackages;
in
mkShell {
  # NIX_GHC_LIBDIR = "${haskell.ghc}/lib/ghc-${haskell.ghc.version}";
  
  # TODO export in direnv ... to slow here
  # inherit ghcide;

  buildInputs = [
    bazel
    bash
    bazel-buildtools
    haskellPackages.ghc
    haskellPackages.hlint
    haskellPackages.hindent
    haskellPackages.cabal-install
    haskellPackages.cabal2nix
    jdk12
    alacritty
    maven
    stack
    # hies
    # niv
    # cachix
    dhall
    dhall-json
    dhall-text
    bazel-watcher
    figlet
    fzf
    # neovim
  ];

  shellHook = ''
  '';
}
