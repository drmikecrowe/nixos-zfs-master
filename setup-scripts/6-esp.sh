for i in ${DISK}; do
 mkfs.vfat -n EFI "${i}"p1
 mkdir -p "${MNT}"/boot/efis/"${i##*/}"p1
 mount -t vfat -o iocharset=iso8859-1 "${i}"p1 "${MNT}"/boot/efis/"${i##*/}"p1
done
