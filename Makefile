HOST ?= $(shell hostname)

.PHONY: switch
switch:
	sudo nixos-rebuild switch --flake .#$(HOST)

.PHONY: home
home:
	home-manager switch -b backup --flake .#$(HOST)

.PHONY: update
update: home

.PHONY: clean
clean:
	nix-collect-garbage -d
