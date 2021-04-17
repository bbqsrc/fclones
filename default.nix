with (import <nixpkgs> {}); with pkgs;
pkgs.rustPlatform.buildRustPackage rec {
  pname = "fclones";
  version = "0.10.2";
  
  src = ./.;

  cargoSha256 = "0a3kj0d5isrngibqq1f8shhj56y261pr558f778w1q8f13ma0q7l";

  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ libudev ];
}
