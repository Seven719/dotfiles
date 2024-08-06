{
	description = "Nixos config flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
  	};

	outputs = { self, nixpkgs, ... }@inputs: {
	    nixosConfigurations.amaterasu = nixpkgs.lib.nixosSystem {
            specialArgs = {
                inherit inputs;
                meta = { hostname = "amaterasu"; };
            };
            modules = [
                ./hosts/amaterasu/hardware-configuration.nix

                ./configuration.nix
                inputs.home-manager.nixosModules.default
            ];
		};
	};
}
