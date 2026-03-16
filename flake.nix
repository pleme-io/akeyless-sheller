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

  outputs = inputs: (import "${inputs.substrate}/lib/repo-flake.nix" {
    inherit (inputs) nixpkgs flake-utils;
  }) {
    self = inputs.self;
    language = "go";
    builder = "tool";
    pname = "akeyless-sheller";
    vendorHash = "sha256-NJrHlwlO8ZQWxblMCf7oXukNtObWv6dThKklYhnrDIs=";
    description = "Go library for streamlined Akeyless CLI authentication and token management";
    homepage = "https://github.com/pleme-io/akeyless-sheller";
  };
}
