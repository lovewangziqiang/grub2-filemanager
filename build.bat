find ./boot | cpio.exe -o -H newc > ./memdisk.cpio

echo build x86_64-efi
grub-mkimage\grub-mkimage.exe -m memdisk.cpio -d grub-mkimage\x86_64-efi -p (memdisk)/boot/grub -c config.cfg -o grubfmx64.efi -O x86_64-efi affs afs all_video android appleldr bfs bitmap bitmap_scale blocklist boot btrfs cat chain cmp configfile cpio crc date datehook datetime dd disk echo efi_gop efi_uga efifwsetup elf eval exfat exfctest ext2 extcmd fat file font fshelp gettext gfxmenu gfxterm gfxterm_background gfxterm_menu gptsync gzio halt hashsum help hexdump hfs hfsplus hfspluscomp iso9660 jfs jpeg linux loadbios loadenv loopback ls lsacpi lsefi lsefimmap lsefisystab lsmmap lspci lvm lzopio memdisk minicmd multiboot multiboot2 newc normal ntfs part_apple part_bsd part_gpt part_msdos parttool png probe procfs random read reboot regexp reiserfs search search_fs_file search_fs_uuid search_label sleep squash4 tar terminal terminfo test tga time true udf video video_bochs video_cirrus video_colors video_fb videoinfo xfs xnu xzio zfs

del memdisk.cpio