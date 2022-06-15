{ sources ? import ./nix/sources.nix, pkgs ? import <nixpkgs> {} }:
with pkgs;

mkShell {
  buildInputs = [
    (import ./nix/base.nix {inherit pkgs;})
    niv
    rust-analyzer
    diesel-cli
    cargo-edit
  ];
}
