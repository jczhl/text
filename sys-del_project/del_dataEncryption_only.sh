del_key(){
   for i in "vendor/etc/fstab.qcom" "boot/ramdisk/fstab.qcom" "boot/ramdisk/oplus.fstab" "boot/ramdisk/system/etc/fstab.qcom" 
   do
    sed -i s#avb.*system,#""#g "$i"
    sed -i s#avb.*vendor,#""#g "$i"
    sed -i s#,fileencryption.*metadata_encryption#""#g "$i"
    sed -i s#,avb_keys.*pubkey#""#g "$i"
   done
}

del_key #去除data加密 avb验证等
