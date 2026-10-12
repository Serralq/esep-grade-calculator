{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { nixpkgs, ... }: {
    packages.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.buildGoModule {
      pname = "esep-grade-calculator";
      version = "0.1.0";
      src = ./grade-calculator;
      vendorHash = null;
      doCheck = false;
    };
  };
}
