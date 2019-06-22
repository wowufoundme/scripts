#!/bin/bash
# Get A6020 device tree
git clone https://github.com/wowufoundme/android_device_lenovo_A6020.git -b lineage-16.0 device/lenovo/A6020

# Get A6020 kernel msm8916 tree
git clone https://github.com/wowufoundme/android_kernel_lenovo_msm8916.git -b lineage-16.0 kernel/lenovo/msm8916

# Get lenovo vendor patches
git clone https://github.com/wowufoundme/android_vendor_lenovo_A6020.git -b lineage-16.0 vendor/lenovo/A6020

# Get miscellaneous patches
git clone https://github.com/LineageOS/android_external_stlport.git -b lineage-15.1 external/stlport
git clone https://github.com/LineageOS/android_external_bson.git -b lineage-16.0 external/bson
git clone https://github.com/LineageOS/android_external_sony_boringssl-compat.git -b lineage-16.0 external/sony/boringssl-compat
git clone https://github.com/LineageOS/android_device_qcom_common.git -b lineage-15.1 device/qcom/common
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-16.0 packages/resources/devicesettings

