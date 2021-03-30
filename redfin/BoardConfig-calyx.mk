#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/google/redbull/BoardConfig-calyx.mk

# Manifests
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += device/google/redfin/lineage_compatibility_matrix.xml

# SEPolicy
BOARD_SEPOLICY_DIRS += device/google/redfin/sepolicy-lineage/vendor

include vendor/google/redfin/BoardConfigVendor.mk
