let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
in
pkgs.mkShell {
  buildInputs = [
    pkgs.rustc
    pkgs.cargo
    pkgs.niv
    pkgs.rust-analyzer
    pkgs.diesel-cli
    pkgs.cargo-edit
  ];
}
