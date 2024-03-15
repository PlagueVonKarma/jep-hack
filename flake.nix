{
  description = "Johto Expansion Pack Romhack";
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-23.05;
    flake-utils.url = github:numtide/flake-utils;
  };
  outputs = { self, nixpkgs, flake-utils, ... }:
    let
      jepDerivation = { stdenv, src, pkgs,
        make ? pkgs.gnumake,
        gcc ? pkgs.gcc,
        rgbds ? pkgs.rgbds,
        files ? ["*.*gb*"],
        # python3 ? pkgs.python3,
      }: stdenv.mkDerivation rec {
          src = ./.;
          name = "jep-hack";
          buildInputs = [ rgbds gcc make ];
          installPhase = ''
            shopt -s extglob
            mkdir $out
            ${builtins.concatStringsSep "\n" (map (item: 
                if builtins.isList item && (builtins.length item == 2)
                then "mv ${builtins.elemAt item 0} $out/${builtins.elemAt item 1}"
                else "cp ${item}* $out"
              ) files)}
          '';
        };
    in flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs { inherit system; overlays = [self.overlays.default]; };
      rgbds_7_0 =
          pkgs.rgbds.overrideAttrs (oldAttrs: {
            postPatch = ''
              if [[ -d $PWD/src ]]; then
                export PATH=$PWD/src:$PATH
                chmod +x $PWD/src/*
                patchShebangs $PWD
              fi
            '';
            version = "0.7.0";
            src = pkgs.fetchFromGitHub {
              owner = "gbdev";
              repo = "rgbds";
              rev = "08f3e360c9525b65291db9cee66fc5eb6e4a45e4";
              sha256 = "sha256-aktKJlwXpHpjSFxoz5wZJPGWZIcn4ax5iBP0GQEux78=";
            };
          });
    in {
      packages = {
        default = pkgs.jep-hack;
        jep-hack = pkgs.jep-hack;
        rgbds_7_0 = rgbds_7_0;
      };
      devShells = {
        default = pkgs.mkShell {
          buildInputs = with pkgs; [
            rgbds_7_0
            gcc
            gnumake
            sameboy
            imagemagick
          ];
        };
      };
    }) // {
      overlays = {
        default = final: prev: {
          jep-hack = final.callPackage jepDerivation {
            files = [
              ["pokecrystal.gbc" "johto-expansion-pak.gbc"]
              ["pokecrystal.sym" "johto-expansion-pak.sym"]
            ];
          };
        };
      };
    };
}
