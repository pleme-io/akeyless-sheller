{
  description = "Go library for streamlined Akeyless CLI authentication and token management";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    substrate = {
      url = "github:pleme-io/substrate";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, substrate, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs { inherit system; };
      mkGoTool = (import "${substrate}/lib/go-tool.nix").mkGoTool;
    in {
      packages.default = mkGoTool pkgs {
        pname = "akeyless-sheller";
        version = "0.0.0-dev";
        src = self;
        vendorHash = "sha256-NJrHlwlO8ZQWxblMCf7oXukNtObWv6dThKklYhnrDIs=";
        description = "Go library for streamlined Akeyless CLI authentication and token management";
        homepage = "https://github.com/pleme-io/akeyless-sheller";
      };

      devShells.default = pkgs.mkShellNoCC {
        packages = with pkgs; [ go gopls gotools ];
      };
    });
}
