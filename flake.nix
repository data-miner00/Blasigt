{
  description = "A flake template for .NET and F#";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
  flake-utils.lib.eachDefaultSystem (
  system: let
    pkgs = import nixpkgs { inherit system; };
  in
  {
    devShells.default =
      pkgs.mkShell
        {
          buildInputs = with pkgs; [
            dotnet-sdk_8
          ];

          shellHook = ''
            echo "Activated Nix Shell"
          '';
        };
  }
  );
}
