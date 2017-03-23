"mkisofs.exe" -R -D -J -l -joliet-long -duplicates-once -o MyHBCD.iso -b HBCD/grldr -c HBCD/boot.cat -hide-joliet HBCD/boot.cat -hide HBCD/boot.cat -no-emul-boot -N -boot-info-table -V HirensBootCD  -boot-load-size 4 CD
pause
