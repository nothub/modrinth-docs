{ pkgs ? import (fetchTarball "http://nixos.org/channels/nixos-22.05/nixexprs.tar.xz") { } }:

with pkgs;

mkShell {
  buildInputs = [
    nodejs-18_x
    yarn
  ];
  shellHook =
    ''
      yarn install
    '';
}
