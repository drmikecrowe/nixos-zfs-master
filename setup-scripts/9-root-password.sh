rootPwd=$(mkpasswd -m SHA-512)

sed -i \
"s|rootHash_placeholder|${rootPwd}|" \
"${MNT}"/etc/nixos/configuration.nix


