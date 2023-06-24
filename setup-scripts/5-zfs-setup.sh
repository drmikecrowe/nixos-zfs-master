set -x

zfs create -o mountpoint=none bpool/boot
zfs create -o mountpoint=legacy bpool/boot/root
mkdir "${MNT}"/boot
mount -t zfs bpool/boot/root "${MNT}"/boot

zfs create -o mountpoint=none rpool/local
zfs create -o mountpoint=none rpool/safe
zfs create -o mountpoint=legacy rpool/local/root
zfs snapshot rpool/local/root@blank
mount -t zfs rpool/local/root "${MNT}"/

zfs create -o mountpoint=legacy rpool/safe/home
mkdir "${MNT}"/home
mount -t zfs rpool/safe/home "${MNT}"/home

zfs create -o mountpoint=legacy rpool/safe/persist
mkdir "${MNT}"/persist
mount -t zfs rpool/safe/persist "${MNT}"/persist
