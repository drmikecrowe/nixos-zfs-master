zpool create \
    -o ashift=12 \
    -o altroot="/mnt" \
    -o autotrim=on \
    -O acltype=posixacl \
    -O canmount=off \
    -O compression=zstd \
    -O dnodesize=auto \
    -O normalization=formD \
    -O relatime=on \
    -O xattr=sa \
    -O mountpoint=none \
    rpool \
   $(for i in ${DISK}; do
      printf '%s ' "${i}p3";
     done)
