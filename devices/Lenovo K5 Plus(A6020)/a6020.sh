#!/bin/bash
# Get A6020 device tree
git clone https://github.com/wowufoundme/pie_device_lenovo_A6020.git -b lineage-16.0 device/lenovo/A6020

# Get A6020 kernel msm8916 tree
git clone https://github.com/wowufoundme/android_kernel_lenovo_msm8916.git -b lineage-16.0 kernel/lenovo/msm8916

# Get lenovo vendor patches
git clone https://github.com/wowufoundme/pie_vendor_lenovo_A6020.git -b lineage-16.0 vendor/lenovo

# Get miscellaneous patches. Skip if already present
git clone https://github.com/LineageOS/android_external_stlport.git -b lineage-15.1 external/stlport
git clone https://github.com/LineageOS/android_external_bson.git -b lineage-16.0 external/bson
git clone https://github.com/LineageOS/android_external_sony_boringssl-compat.git -b lineage-16.0 external/sony/boringssl-compat
git clone https://github.com/LineageOS/android_device_qcom_common.git -b lineage-15.1 device/qcom/common
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-16.0 packages/resources/devicesettings
git clone https://github.com/A6020-pie/android_vendor_qcom_opensource_dataservices -b pie vendor/qcom/opensource/dataservices
git clone https://github.com/A6020-pie/platform_hardware_qcom_audio -b pie-caf-8916 hardware/qcom/audio-caf/msm8916
git clone https://github.com/A6020-pie/platform_hardware_qcom_display -b pie-caf-8916 hardware/qcom/display-caf/msm8916
git clone https://github.com/A6020-pie/platform_hardware_qcom_media -b pie-caf-8916 hardware/qcom/media-caf/msm8916
git clone https://github.com/A6020-pie/platform_hardware_qcom_wlan -b pie hardware/qcom/wlan
git clone https://github.com/A6020-pie/platform_hardware_qcom_wlan -b pie-caf hardware/qcom/wlan-caf
git clone https://github.com/A6020-pie/android_external_tinycompress -b pie external/tinycompress
git clone https://github.com/A6020-pie/android_hardware_interfaces -b pie hardware/interfaces
git clone https://github.com/A6020-pie/platform_frameworks_av -b pie frameworks/av
git clone https://github.com/A6020-pie/platform_hardware_qcom_bt -b pie-caf hardware/qcom/bt-caf
git clone https://github.com/LineageOS/android_device_qcom_sepolicy-legacy -b lineage-16.0 device/qcom/sepolicy-legacy
