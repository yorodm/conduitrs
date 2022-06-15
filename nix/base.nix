{sources ? import ./nix/sources.nix ,pkgs ? import sources.nixpkgs{}}:

with pkgs;
buildEnv {
  name="conduitrs";
  paths=[
    rustc
    cargo
  ];
}
