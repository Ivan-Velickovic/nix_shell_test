let
    pkgs = import <nixpkgs> {};
    cross = import <nixpkgs> {
        crossSystem = { config = "aarch64-unknown-linux-gnu"; };
    };
in
  pkgs.mkShell {
    buildInputs = with pkgs.buildPackages; [
        qemu
        gnumake
        cross.buildPackages.gcc9
    ];
}

