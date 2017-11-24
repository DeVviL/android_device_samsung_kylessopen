#!/bin/bash
cd ../../../..
cd frameworks/base
patch -p1 < ../../device/samsung/kylessopen/patches/0001-allow-using-classic-webview.patch
patch -p1 < ../../device/samsung/kylessopen/patches/0002-add-freememoryfortests.patch
cd ..
cd native
patch -p1 < ../../device/samsung/kylessopen/patches/0003-libgui-Bring-back-support-mHeap-based-screenshot.patch
patch -p1 < ../../device/samsung/kylessopen/patches/0004-gui-allow-disabling-fence-sync.patch
patch -p1 < ../../device/samsung/kylessopen/patches/0005-Select-texture-target-based-on-pixel-format.patch
cd ..
cd webview
patch -p1 < ../../device/samsung/kylessopen/patches/0006-add-classic-webview.patch
cd ../..
cd hardware/libhardware
patch -p1 < ../../device/samsung/kylessopen/patches/0007-hwcomposer-Add-sourceTransform-to-hwc_layer_t.patch
cd ..
cd libhardware_legacy
patch -p1 < ../../device/samsung/kylessopen/patches/0008-audio-add-missing-audio-formats-msm7x27a.patch
cd ../..

