/*
 * Copyright (C) 2023 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>
#include <libinit_utils.h>

#include "vendor_init.h"

#define FINGERPRINT_GL "POCO/stone_p_global/stone:13/TP1A.220624.014/V14.0.7.0.TLUMIXM:user/release-keys"

static const variant_info_t stone_p_global_info = {
    .hwc_value = "stonegl",
    .sku_value = "stonep",

    .brand = "POCO",
    .device = "stone",
    .model = "22071219CG",
    .build_fingerprint = FINGERPRINT_GL,

    .nfc = true,
};

static const std::vector<variant_info_t> variants = {
    stone_p_global_info,
};

void vendor_load_properties() {
    set_dalvik_heap();
    search_variant(variants);

    // SafetyNet workaround
    property_override("ro.boot.verifiedbootstate", "green");
}
