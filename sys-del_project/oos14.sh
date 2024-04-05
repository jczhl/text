de(){
 
 oo=$(find */*app*/ -name $1)
 if [ ! $oo ];then
   oo=$(find */*/*app*/ -name $1)
 fi
 if [ $oo ];then
  echo $oo
  echo $oo >> ../del_app-by-zhlhlf.txt
  rm -rf $oo
 fi

}

del_key(){
   for i in "vendor/etc/fstab.qcom" "boot/ramdisk/fstab.qcom" "boot/ramdisk/oplus.fstab" 
   do
    sed -i s#avb.*system,#""#g "$i"
    sed -i s#avb.*vendor,#""#g "$i"
    sed -i s#,fileencryption.*metadata_encryption#""#g "$i"
    sed -i s#,avb_keys.*pubkey#""#g "$i"
   done
}


del_key #去除data加密 avb验证等
rm -rf */*del-app*
rm -rf */Omoji
echo "ro.setupwizard.mode=DISABLED" >> system/system/build.prop #跳过谷歌向导
#rm -rf $(find ./ -name "SetupWizard") #删除后下拉 全面屏返回等出问题
de COSA #应用增强服务 #游戏模式相关
de LogKit #反馈工具箱
de Stk #sim卡工具包
de GlobalSearch "全局搜索"
de OplusCommercialEngineerCamera "工程相机"
de HTMLViewer 
de CalendarProvider "日历储存"
de OplusCommercialEngineerMode "工程模式"
de ChildrenSpace "儿童模式"
de LinktoWindows "连接windows"
de ColorDirectService "识屏服务"
de AssistantScreen
de CalendarGoogle
de CloudService
de Drive
de Google_AssistantShell
de Google_Lens
de Google_Pay3
de KeKePay
de LatinImeGoogle
de Meet
de Netflix_Activation_OnePlus
de Netflix_Stub
de Omoji
de Photos
de SoftsimRedteaRoaming
de Videos
de YTMusic
de INOnePlusStore
de NewSoundRecorder
de Google_Home
de Google_News
de Google_One
de Google_Podcasts
de Google_Files
de WellbeingPrebuilt
de RecorderPrebuilt
de PixelLiveWallpaperPrebuilt
de MarkupGoogle
de CalculatorGooglePrebuilt
de CalendarGooglePrebuilt
de DevicePolicyPrebuilt
de FilesPrebuilt
de GoogleRestorePrebuilt
de SafetyHubPrebuilt
de GmsCore
de PrebuiltGmsCore #删除后安装毒瘤qq出问题
de PartnerSetupPrebuilt
de ScribePrebuilt
de SecurityHubPrebuilt
de AndroidAutoStubPrebuilt
de LatinIMEGooglePrebuilt
de LocationHistoryPrebuilt
de DevicePersonalizationPrebuiltPixel2020
de Chrome
de Chrome-Stub
de GoogleTTS
de ChromePartnerProvider
de Gmail2
de GoogleLocationHistory
de GoogleServicesFramework
de Music
de Maps
de SpeechServicesByGoogle
de YouTube
de Melody
de AndroidAutoStub
de GoogleRestore
de Phonesky
de Velvet
de Wellbeing
de OppoWeather2
de OppoWeatherService
de BackupAndRestore
de OPBreathMode
de OPForum
de OPNote
de OPWidget
de Portrait
de Pictorial
de RomUpdate
de AccessoryFramework
de dmp
#de OCar
de CodeBook
de OplusOperationManual
de OppoWeatherService
de Olc
de UpgradeGuide
de KeKeUserCenter
de HeyCast
de OplusEngineerCamera
de OPSynergy
de ONet
de OTA
de OPScout
de talkback
de Account
de SystemAppUpdateService
de OPShelf
de Duo
de SOSHelper
de KeKeThemeSpace
