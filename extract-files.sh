#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

if [ -z "${DEVICE_COMMON}" ]; then
    echo ""
    echo "error: This is a script in a common tree. Please execute" $(basename $0) "from a device tree."
    echo ""
    exit 1
fi

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

ANDROID_ROOT="${MY_DIR}/../../.."

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

function blob_fixup() {
    case "${1}" in
        vendor/bin/thermal-engine)
            sed -i 's|/system/etc|/vendor/etc|g' "${2}"
            ;;
        vendor/lib/libmmcamera2_sensor_modules.so)
            sed -i 's|system/etc|vendor/etc|g;
                    s|/system/lib|/vendor/lib|g;
                    s|/system/cameradata|/vendor/cameradata|g' "${2}"
            ;;
        vendor/lib/mediadrm/libwvdrmengine.so)
            "${PATCHELF}" --replace-needed libprotobuf-cpp-lite.so libprotobuf-cpp-lite-v29.so "${2}"
            ;;
    vendor/bin/mm-qcamera-daemon|vendor/bin/qmuxd|vendor/lib/libAfSingle.so|vendor/lib/libchromatix_s5k6a3yx_vt_hd.so|vendor/lib/libmmcamera2_stats_modules.so|vendor/lib/libmmcamera_imx219.so|vendor/lib/libgccdemangle.so|vendor/lib/libchromatix_imx219_liveshot.so|vendor/lib/libdsucsd.so|vendor/lib/libril-qcril-hook-oem.so|vendor/lib/libmmcamera2_stats_algorithm.so|vendor/lib/E08QL_libTs_J_Awb.so|vendor/lib/libomission_avoidance.so|vendor/lib/libqmi_encdec.so|vendor/lib/libmmcamera_faceproc.so|vendor/lib/E08QL_libchromatix_s5k4h5yb_common_res0.so|vendor/lib/libTs_J_Awb.so|vendor/lib/libTs_J_Accm.so|vendor/lib/libqmi_client_qmux.so|vendor/lib/libmmjpeg_interface.so|vendor/lib/E08QL_libchromatix_s5k4h5yb_zsl.so|vendor/lib/libmmcamera_s5k4h5yb.so|vendor/lib/libmmcamera_fidelix_eeprom.so|vendor/lib/libmmcamera2_iface_modules.so|vendor/lib/libqmi_common_so.so|vendor/lib/libmmcamera_cac.so|vendor/lib/E08QL_libchromatix_s5k4h5yb_snapshot.so|vendor/lib/libmmcamera2_sensor_modules.so|vendor/lib/E08QL_libchromatix_s5k4h5yb_common_res1.so|vendor/lib/E08QL_libchromatix_s5k4h5yb_zslshot.so|vendor/lib/libactuator_dw9804k_camcorder.so|vendor/lib/libqcci_legacy.so|vendor/lib/libchromatix_imx219_panorama.so|vendor/lib/libqmiservices.so|vendor/lib/E08QL_libchromatix_s5k4h5yb_default_video.so|vendor/lib/E08QL_libTsAe.so|vendor/lib/libmmcamera_imglib.so|vendor/lib/libchromatix_imx219_common_res0.so|vendor/lib/libmmcamera_wavelet_lib.so|vendor/lib/libchromatix_imx219_common.so|vendor/lib/libdsnetutils.so|vendor/lib/libmmcamera_cac2_lib.so|vendor/lib/libMMFW_scone_stub.so|vendor/lib/libsec-ril.so|vendor/lib/libTsAf.so|vendor/lib/libstlport.so|vendor/lib/libmmcamera_hdr_gb_lib.so|vendor/lib/libmmcamera2_vpe_module.so|vendor/lib/libchromatix_imx219_zslshot.so|vendor/lib/E08QL_libchromatix_s5k4h5yb_preview.so|vendor/lib/libcorkscrew.so|vendor/lib/libchromatix_s5k6a3yx_smart_stay.so|vendor/lib/libactuator_dw9804k_camera.so|vendor/lib/librilutils.so|vendor/lib/libacdapi_clb.so|vendor/lib/liboemcamera.so|vendor/lib/libcordon.so|vendor/lib/libdiag.so|vendor/lib/libmmcamera_sr030pc50.so|vendor/lib/libnetutils.so|vendor/lib/E08QL_libchromatix_s5k4h5yb_panorama.so|vendor/lib/E08QL_libchromatix_s5k4h5yb_common.so|vendor/lib/libchromatix_s5k6a3yx_vt.so|vendor/lib/libchromatix_imx219_snapshot.so|vendor/lib/libqmi_csi.so|vendor/lib/E08QL_libTs_J_Accm.so|vendor/lib/E08QL_libTsAf.so|vendor/lib/libidl.so|vendor/lib/E08QL_libchromatix_s5k4h5yb_video_hd.so|vendor/lib/libdsutils.so|vendor/lib/libmmcamera_image_stab.so|vendor/lib/libmmcamera2_c2d_module.so|vendor/lib/libmmcamera2_pproc_modules.so|vendor/lib/libTsAe.so|vendor/lib/libc2d30-a4xx.so|vendor/lib/libmmcamera2_isp_modules.so|vendor/lib/libchromatix_imx219_preview.so|vendor/lib/E08QL_libchromatix_s5k4h5yb_liveshot.so|vendor/lib/libc2d30.so|vendor/lib/libfactoryutil.so|vendor/lib/libatparser.so|vendor/lib/libmmcamera2_cpp_module.so|vendor/lib/libc2d2_z180.so|vendor/lib/libarcsoft_panorama_burstcapture.so|vendor/lib/libmmcamera2_imglib_modules.so|vendor/lib/hw/sensors.msm8226.so|vendor/lib/hw/camera.msm8226.so|vendor/lib/libtime_genoff.so|vendor/lib/libmmcamera2_wnr_module.so|vendor/lib/libmmcamera_interface.so|vendor/lib/libmmcamera_s5k4ecgx.so|vendor/lib/libqmi.so|vendor/lib/libmmcamera_rohm_brce064gwz_eeprom.so|vendor/lib/libchromatix_imx219_default_video.so|vendor/lib/libmm-color-convertor.so|vendor/lib/libconfigdb.so|vendor/lib/libqmi_csvt_srvc.so|vendor/lib/libloc_ds_api.so|vendor/bin/qcks|vendor/bin/ks|vendor/bin/efsks|vendor/bin/ds_fmc_appd|vendor/lib/libchromatix_s5k6a3yx_preview.so|vendor/lib/libdsucsd.so|vendor/lib/libomission_avoidance.so|vendor/lib/libactuator_ak7345_camera.so|vendor/lib/libchromatix_s5k6a3yx_zsl.so|vendor/lib/libchromatix_s5k6a3yx_snapshot.so|vendor/lib/libchromatix_s5k6a3yx_common.so|vendor/lib/libsensor1.so|vendor/lib/libdrmdecrypt.so|vendor/lib/libactuator_dw9804_camcorder.so|vendor/lib/libmmcamera_s5k6a3yx.so|vendor/lib/libarcsoft_flawlessface.so|vendor/lib/libqomx_jpegenc.so|vendor/lib/libdsnetutils.so|vendor/lib/libactuator_dw9804_camera.so|vendor/lib/libchromatix_s5k6a3yx_default_video.so|vendor/lib/libarcsoft_sensorndk.so|vendor/lib/libchromatix_s5k6a3yx_video_hd.so|vendor/lib/libarcsoft_picaction.so|vendor/lib/libcordon.so|vendor/lib/libqdi.so|vendor/lib/libarcsoft_skin_soften.so|vendor/lib/libfactoryutil.so|vendor/lib/libatparser.so|vendor/lib/libyasalgo.so|vendor/lib/libmmipl.so|vendor/lib/libcsd-client.so|vendor/lib/libqomx_jpegdec.so|vendor/lib/libactuator_ak7345_camcorder.so|vendor/lib/libmmosal.so|vendor/lib/libdsi_netctrl.so|vendor/lib/libqmi_csvt_srvc.so)
        "${PATCHELF}" --replace-needed "libstdc++.so" "libstdc++_vendor.so" "${2}"
        ;;
    esac
}

setup_vendor "${DEVICE_COMMON}" "${VENDOR}" "${ANDROID_ROOT}" true

for BLOB_LIST in "${MY_DIR}"/common-proprietary-files*.txt; do
    extract "${BLOB_LIST}" "${SRC}"
done

export BOARD_COMMON=msm8226-common

"./../../${VENDOR}/${BOARD_COMMON}/extract-files.sh" "$@"
