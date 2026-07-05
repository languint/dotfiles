.PHONY: update
update:
	home-manager switch --flake .#longuint

.PHONY: clean
clean:
	nix-collect-garbage -d
