for i in ${DISK}; do
   cryptsetup open --type plain --key-file /dev/random "${i}"p4 "${i##*/}"p4
   mkswap /dev/mapper/"${i##*/}"p4
   swapon /dev/mapper/"${i##*/}"p4
done
