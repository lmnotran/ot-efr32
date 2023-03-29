####################################################################
# Automatically-generated file. Do not edit!                       #
# CMake Version 1                                                  #
####################################################################
#
#  Copyright (c) 2022, The OpenThread Authors.
#  All rights reserved.
#
#  Redistribution and use in source and binary forms, with or without
#  modification, are permitted provided that the following conditions are met:
#  1. Redistributions of source code must retain the above copyright
#     notice, this list of conditions and the following disclaimer.
#  2. Redistributions in binary form must reproduce the above copyright
#     notice, this list of conditions and the following disclaimer in the
#     documentation and/or other materials provided with the distribution.
#  3. Neither the name of the copyright holder nor the
#     names of its contributors may be used to endorse or promote products
#     derived from this software without specific prior written permission.
#
#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
#  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
#  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
#  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
#  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
#  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
#  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
#  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
#  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
#  POSSIBILITY OF SUCH DAMAGE.
#
include(${PROJECT_SOURCE_DIR}/third_party/silabs/cmake/utility.cmake)
include(example_vendor-rcp-uart-mbedtls.cmake)

# ==============================================================================
# Platform library
# ==============================================================================

# Create the platform as an OBJECT library target
#
# **NOTE**: Defining the library target as STATIC will cause linking issues
#           where the WEAK implementation of a function is taken when both
#           weakly and strongly defined implementations of the same function
#           exist.
add_library(example_vendor-rcp-uart OBJECT
    $<TARGET_OBJECTS:openthread-platform-utils>
)

# Interface lib for sharing efr32 config to relevant targets
add_library(example_vendor-rcp-uart-config INTERFACE)

set_target_properties(example_vendor-rcp-uart
    PROPERTIES
        C_STANDARD 99
        CXX_STANDARD 11
)

# ==============================================================================
# Includes
# ==============================================================================
target_include_directories(ot-config INTERFACE
    config
    autogen
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include
    ${SILABS_GSDK_DIR}/platform/common/inc
    ${SILABS_GSDK_DIR}/hardware/board/inc
    ${SILABS_GSDK_DIR}/platform/CMSIS/Core/Include
    ${SILABS_GSDK_DIR}/hardware/driver/configuration_over_swo/inc
    ${SILABS_GSDK_DIR}/platform/driver/debug/inc
    ${SILABS_GSDK_DIR}/platform/service/device_init/inc
    ${SILABS_GSDK_DIR}/platform/emdrv/dmadrv/inc
    ${SILABS_GSDK_DIR}/platform/emdrv/common/inc
    ${SILABS_GSDK_DIR}/platform/emlib/inc
    ${SILABS_GSDK_DIR}/platform/emdrv/gpiointerrupt/inc
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/config
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/inc
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library
    ${SILABS_GSDK_DIR}/platform/service/mpu/inc
    ${SILABS_GSDK_DIR}/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart
    ${SILABS_GSDK_DIR}/platform/emdrv/nvm3/inc
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils
    ${PROJECT_SOURCE_DIR}/src/src
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/inc
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/inc/public
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/common
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/protocol/ble
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/protocol/ieee802154
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/protocol/zwave
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/chip/efr32/efr32xg1x
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/pa-conversions
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/rail_util_pti
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/rail_util_rssi
    ${SILABS_GSDK_DIR}/util/plugin/security_manager
    ${SILABS_GSDK_DIR}/util/third_party/segger/systemview/SEGGER
    ${SILABS_GSDK_DIR}/util/silicon_labs/silabs_core/memory_manager
    ${SILABS_GSDK_DIR}/platform/common/toolchain/inc
    ${SILABS_GSDK_DIR}/platform/service/system/inc
    ${SILABS_GSDK_DIR}/platform/service/sleeptimer/inc
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_protocol_crypto/src
    ${SILABS_GSDK_DIR}/platform/emdrv/uartdrv/inc
    ${SILABS_GSDK_DIR}/platform/service/udelay/inc
)

target_include_directories(example_vendor-rcp-uart-config BEFORE INTERFACE
    autogen
    config
)

target_include_directories(example_vendor-rcp-uart PRIVATE
    ${OT_PUBLIC_INCLUDES}
)

# ==============================================================================
# Sources
# ==============================================================================
target_sources(example_vendor-rcp-uart PRIVATE
    ${SILABS_GSDK_DIR}/hardware/board/inc/sl_board_control.h
    ${SILABS_GSDK_DIR}/hardware/board/inc/sl_board_init.h
    ${SILABS_GSDK_DIR}/hardware/board/src/sl_board_control_gpio.c
    ${SILABS_GSDK_DIR}/hardware/board/src/sl_board_init.c
    ${SILABS_GSDK_DIR}/hardware/driver/configuration_over_swo/inc/sl_cos.h
    ${SILABS_GSDK_DIR}/hardware/driver/configuration_over_swo/src/sl_cos.c
    ${SILABS_GSDK_DIR}/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.h
    ${SILABS_GSDK_DIR}/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
    ${SILABS_GSDK_DIR}/platform/CMSIS/Core/Include/cmsis_compiler.h
    ${SILABS_GSDK_DIR}/platform/CMSIS/Core/Include/cmsis_gcc.h
    ${SILABS_GSDK_DIR}/platform/CMSIS/Core/Include/cmsis_version.h
    ${SILABS_GSDK_DIR}/platform/CMSIS/Core/Include/core_cm4.h
    ${SILABS_GSDK_DIR}/platform/CMSIS/Core/Include/mpu_armv7.h
    ${SILABS_GSDK_DIR}/platform/CMSIS/Core/Include/tz_context.h
    ${SILABS_GSDK_DIR}/platform/common/inc/sl_assert.h
    ${SILABS_GSDK_DIR}/platform/common/inc/sl_atomic.h
    ${SILABS_GSDK_DIR}/platform/common/inc/sl_common.h
    ${SILABS_GSDK_DIR}/platform/common/inc/sl_enum.h
    ${SILABS_GSDK_DIR}/platform/common/inc/sl_status.h
    ${SILABS_GSDK_DIR}/platform/common/src/sl_assert.c
    ${SILABS_GSDK_DIR}/platform/common/toolchain/inc/sl_gcc_preinclude.h
    ${SILABS_GSDK_DIR}/platform/common/toolchain/inc/sl_memory.h
    ${SILABS_GSDK_DIR}/platform/common/toolchain/inc/sl_memory_region.h
    ${SILABS_GSDK_DIR}/platform/common/toolchain/src/sl_memory.c
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p432f1024gl125.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_acmp.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_adc.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_af_pins.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_af_ports.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_cmu.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_cryotimer.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_crypto.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_csen.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_devinfo.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_dma_descriptor.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_dmareq.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_emu.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_etm.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_fpueh.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_gpcrc.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_gpio.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_gpio_p.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_i2c.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_idac.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_ldma.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_ldma_ch.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_lesense.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_lesense_buf.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_lesense_ch.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_lesense_st.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_letimer.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_leuart.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_msc.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_pcnt.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_prs.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_prs_ch.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_prs_signals.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_rmu.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_romtable.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_rtcc.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_rtcc_cc.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_rtcc_ret.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_smu.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_timer.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_timer_cc.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_trng.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_usart.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_vdac.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_vdac_opa.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_wdog.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/efr32mg12p_wdog_pch.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/em_device.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include/system_efr32mg12p.h
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.c
    ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
    ${SILABS_GSDK_DIR}/platform/driver/debug/inc/sl_debug_swo.h
    ${SILABS_GSDK_DIR}/platform/driver/debug/src/sl_debug_swo.c
    ${SILABS_GSDK_DIR}/platform/emdrv/common/inc/ecode.h
    ${SILABS_GSDK_DIR}/platform/emdrv/dmadrv/inc/dmadrv.h
    ${SILABS_GSDK_DIR}/platform/emdrv/dmadrv/src/dmadrv.c
    ${SILABS_GSDK_DIR}/platform/emdrv/gpiointerrupt/inc/gpiointerrupt.h
    ${SILABS_GSDK_DIR}/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
    ${SILABS_GSDK_DIR}/platform/emdrv/nvm3/inc/nvm3.h
    ${SILABS_GSDK_DIR}/platform/emdrv/nvm3/inc/nvm3_default.h
    ${SILABS_GSDK_DIR}/platform/emdrv/nvm3/inc/nvm3_hal.h
    ${SILABS_GSDK_DIR}/platform/emdrv/nvm3/inc/nvm3_hal_flash.h
    ${SILABS_GSDK_DIR}/platform/emdrv/nvm3/inc/nvm3_lock.h
    ${SILABS_GSDK_DIR}/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
    ${SILABS_GSDK_DIR}/platform/emdrv/nvm3/src/nvm3_hal_flash.c
    ${SILABS_GSDK_DIR}/platform/emdrv/nvm3/src/nvm3_lock.c
    ${SILABS_GSDK_DIR}/platform/emdrv/uartdrv/inc/uartdrv.h
    ${SILABS_GSDK_DIR}/platform/emdrv/uartdrv/src/uartdrv.c
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_assert.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_bus.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_chip.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_cmu.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_cmu_compat.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_common.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_core.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_crypto.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_crypto_compat.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_emu.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_gpio.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_ldma.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_leuart.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_msc.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_msc_compat.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_prs.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_ramfunc.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_rmu.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_rtcc.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_system.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_timer.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_usart.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/em_version.h
    ${SILABS_GSDK_DIR}/platform/emlib/inc/sli_em_cmu.h
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_cmu.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_core.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_crypto.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_emu.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_gpio.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_ldma.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_leuart.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_msc.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_prs.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_rmu.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_rtcc.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_system.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_timer.c
    ${SILABS_GSDK_DIR}/platform/emlib/src/em_usart.c
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/chip/efr32/efr32xg1x/rail_chip_specific.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/common/rail.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/common/rail_assert_error_codes.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/common/rail_features.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/common/rail_mfm.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/common/rail_types.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x/sl_rail_util_pa_curves.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/pa-conversions/pa_curve_types_efr32.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/rail_util_rssi/sl_rail_util_rssi.c
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/plugin/rail_util_rssi/sl_rail_util_rssi.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/protocol/ble/rail_ble.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/protocol/ieee802154/rail_ieee802154.h
    ${SILABS_GSDK_DIR}/platform/radio/rail_lib/protocol/zwave/rail_zwave.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/config/config-device-acceleration.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/inc/aes_alt.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/inc/ccm_alt.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/inc/cmac_alt.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/inc/gcm_alt.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/inc/sha1_alt.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/inc/sha256_alt.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/inc/sha512_alt.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/inc/sl_mbedtls.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/inc/sli_psa_crypto.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/src/crypto_aes.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/src/crypto_ecp.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ccm.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_sha.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/src/sl_entropy_hardware.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/inc/crypto_management.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/inc/psa/error.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/inc/psa/internal_trusted_storage.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/inc/psa/sli_internal_trusted_storage.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/inc/public/sl_psa_values.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/inc/sli_crypto_transparent_functions.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/inc/sli_crypto_transparent_types.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/inc/sli_crypto_trng_driver.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/inc/sli_psa_driver_common.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/inc/sli_se_version_dependencies.h
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/src/crypto_management.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
    ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
    ${SILABS_GSDK_DIR}/platform/service/device_init/inc/sl_device_init_clocks.h
    ${SILABS_GSDK_DIR}/platform/service/device_init/inc/sl_device_init_dcdc.h
    ${SILABS_GSDK_DIR}/platform/service/device_init/inc/sl_device_init_emu.h
    ${SILABS_GSDK_DIR}/platform/service/device_init/inc/sl_device_init_hfxo.h
    ${SILABS_GSDK_DIR}/platform/service/device_init/inc/sl_device_init_lfxo.h
    ${SILABS_GSDK_DIR}/platform/service/device_init/inc/sl_device_init_nvic.h
    ${SILABS_GSDK_DIR}/platform/service/device_init/src/sl_device_init_dcdc_s1.c
    ${SILABS_GSDK_DIR}/platform/service/device_init/src/sl_device_init_emu_s1.c
    ${SILABS_GSDK_DIR}/platform/service/device_init/src/sl_device_init_hfxo_s1.c
    ${SILABS_GSDK_DIR}/platform/service/device_init/src/sl_device_init_lfxo_s1.c
    ${SILABS_GSDK_DIR}/platform/service/device_init/src/sl_device_init_nvic.c
    ${SILABS_GSDK_DIR}/platform/service/mpu/inc/sl_mpu.h
    ${SILABS_GSDK_DIR}/platform/service/mpu/src/sl_mpu.c
    ${SILABS_GSDK_DIR}/platform/service/sleeptimer/inc/sl_sleeptimer.h
    ${SILABS_GSDK_DIR}/platform/service/sleeptimer/inc/sli_sleeptimer.h
    ${SILABS_GSDK_DIR}/platform/service/sleeptimer/src/sl_sleeptimer.c
    ${SILABS_GSDK_DIR}/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
    ${SILABS_GSDK_DIR}/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
    ${SILABS_GSDK_DIR}/platform/service/sleeptimer/src/sli_sleeptimer_hal.h
    ${SILABS_GSDK_DIR}/platform/service/system/inc/sl_system_init.h
    ${SILABS_GSDK_DIR}/platform/service/system/inc/sl_system_process_action.h
    ${SILABS_GSDK_DIR}/platform/service/system/src/sl_system_init.c
    ${SILABS_GSDK_DIR}/platform/service/system/src/sl_system_process_action.c
    ${SILABS_GSDK_DIR}/platform/service/udelay/inc/sl_udelay.h
    ${SILABS_GSDK_DIR}/platform/service/udelay/src/sl_udelay.c
    ${PROJECT_SOURCE_DIR}/src/src/alarm.c
    ${PROJECT_SOURCE_DIR}/src/src/board_config.h
    ${PROJECT_SOURCE_DIR}/src/src/crypto.c
    ${PROJECT_SOURCE_DIR}/src/src/diag.c
    ${PROJECT_SOURCE_DIR}/src/src/entropy.c
    ${PROJECT_SOURCE_DIR}/src/src/flash.c
    ${PROJECT_SOURCE_DIR}/src/src/ieee802154-packet-utils.cpp
    ${PROJECT_SOURCE_DIR}/src/src/ieee802154-packet-utils.hpp
    ${PROJECT_SOURCE_DIR}/src/src/ieee802154mac.h
    ${PROJECT_SOURCE_DIR}/src/src/logging.c
    ${PROJECT_SOURCE_DIR}/src/src/memory.c
    ${PROJECT_SOURCE_DIR}/src/src/misc.c
    ${PROJECT_SOURCE_DIR}/src/src/openthread-core-efr32-config-check.h
    ${PROJECT_SOURCE_DIR}/src/src/openthread-core-efr32-config.h
    ${PROJECT_SOURCE_DIR}/src/src/platform-band.h
    ${PROJECT_SOURCE_DIR}/src/src/platform-efr32.h
    ${PROJECT_SOURCE_DIR}/src/src/radio.c
    ${PROJECT_SOURCE_DIR}/src/src/rail_config.h
    ${PROJECT_SOURCE_DIR}/src/src/sl_openthread.h
    ${PROJECT_SOURCE_DIR}/src/src/sl_packet_utils.h
    ${PROJECT_SOURCE_DIR}/src/src/startup-gcc.c
    ${PROJECT_SOURCE_DIR}/src/src/system.c
    ${PROJECT_SOURCE_DIR}/src/src/uartdrv_uart.c
    ${SILABS_GSDK_DIR}/util/plugin/security_manager/security_manager.c
    ${SILABS_GSDK_DIR}/util/plugin/security_manager/security_manager.h
    ${SILABS_GSDK_DIR}/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
    ${SILABS_GSDK_DIR}/util/silicon_labs/silabs_core/memory_manager/sl_malloc.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/aes.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/aria.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/asn1.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/asn1write.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/base64.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/bignum.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/build_info.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/camellia.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/ccm.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/chacha20.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/chachapoly.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/check_config.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/cipher.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/cmac.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/compat-2.x.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/config_psa.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/constant_time.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/ctr_drbg.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/debug.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/des.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/dhm.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/ecdh.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/ecdsa.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/ecjpake.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/ecp.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/entropy.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/error.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/gcm.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/hkdf.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/hmac_drbg.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/mbedtls_config.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/md.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/md5.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/memory_buffer_alloc.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/net_sockets.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/nist_kw.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/oid.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/pem.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/pk.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/pkcs12.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/pkcs5.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/platform.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/platform_time.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/platform_util.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/poly1305.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/private_access.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/psa_util.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/ripemd160.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/rsa.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/sha1.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/sha256.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/sha512.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/ssl.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/ssl_cache.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/ssl_ciphersuites.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/ssl_cookie.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/ssl_ticket.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/threading.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/timing.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/version.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/x509.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/x509_crl.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/x509_crt.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/mbedtls/x509_csr.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_builtin_composites.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_builtin_primitives.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_compat.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_config.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_driver_common.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_driver_contexts_composites.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_driver_contexts_primitives.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_extra.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_platform.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_se_driver.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_sizes.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_struct.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_types.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/include/psa/crypto_values.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/aes.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/asn1parse.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/asn1write.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/base64.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/bignum.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/bignum_internal.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/bn_mul.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ccm.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/check_crypto_config.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/cipher.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/cipher_wrap.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/cipher_wrap.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/cmac.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/common.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/constant_time.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/constant_time_internal.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/constant_time_invasive.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ctr_drbg.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ecdsa.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ecjpake.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ecp.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ecp_curves.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ecp_internal_alt.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ecp_invasive.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/entropy.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/entropy_poll.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/entropy_poll.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/hmac_drbg.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/md.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/md_wrap.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/mps_common.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/mps_error.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/mps_reader.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/mps_trace.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/oid.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/padlock.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/pem.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/pk.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/pk_wrap.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/pk_wrap.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/pkparse.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/pkwrite.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/pkwrite.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/platform.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/platform_util.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_aead.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_aead.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_cipher.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_cipher.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_client.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_core.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_ecp.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_ecp.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_hash.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_hash.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_invasive.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_its.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_mac.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_mac.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_random_impl.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_rsa.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_rsa.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_se.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_se.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_slot_management.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_slot_management.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_storage.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/psa_crypto_storage.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/rsa_alt_helpers.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/sha256.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_cache.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_ciphersuites.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_client.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_client.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_cookie.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_debug_helpers.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_debug_helpers_generated.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_misc.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_msg.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_ticket.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_tls.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_tls12_client.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_tls12_server.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_tls13_invasive.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/ssl_tls13_keys.h
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/threading.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/x509.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/x509_create.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/x509_crl.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/x509_crt.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/x509_csr.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/x509write_crt.c
    ${SILABS_GSDK_DIR}/util/third_party/mbedtls/library/x509write_csr.c
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/openthread-system.h
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/code_utils.h
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/debug_uart.c
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/link_metrics.cpp
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/link_metrics.h
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/logging_rtt.c
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/logging_rtt.h
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/mac_frame.cpp
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/mac_frame.h
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/settings.h
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/settings_ram.c
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/soft_source_match_table.c
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/soft_source_match_table.h
    ${PROJECT_SOURCE_DIR}/openthread/examples/platforms/utils/uart.h
    ${SILABS_GSDK_DIR}/util/third_party/segger/systemview/SEGGER/SEGGER.h
    ${SILABS_GSDK_DIR}/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c
    ${SILABS_GSDK_DIR}/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.h
    autogen/mbedtls_config_autogen.h
    autogen/psa_crypto_config_autogen.h
    autogen/RTE_Components.h
    autogen/sl_board_default_init.c
    autogen/sl_component_catalog.h
    autogen/sl_device_init_clocks.c
    autogen/sl_event_handler.c
    autogen/sl_event_handler.h
    autogen/sl_mbedtls_config_transform_autogen.h
    autogen/sl_ot_init.c
    autogen/sl_ot_init.h
    autogen/sl_uartdrv_init.c
    autogen/sl_uartdrv_instances.h
    config/dmadrv_config.h
    config/emlib_core_debug_config.h
    config/nvm3_default_config.h
    config/psa_crypto_config.h
    config/SEGGER_RTT_Conf.h
    config/sl_board_control_config.h
    config/sl_debug_swo_config.h
    config/sl_device_init_dcdc_config.h
    config/sl_device_init_emu_config.h
    config/sl_device_init_hfxo_config.h
    config/sl_device_init_lfxo_config.h
    config/sl_mbedtls_config.h
    config/sl_memory_config.h
    config/sl_mx25_flash_shutdown_usart_config.h
    config/sl_rail_util_pa_config.h
    config/sl_rail_util_pti_config.h
    config/sl_rail_util_rssi_config.h
    config/sl_sleeptimer_config.h
    config/sl_uartdrv_usart_vcom_config.h
    config/uartdrv_config.h
)
target_sources(example_vendor-rcp-uart PRIVATE ${SILABS_GSDK_DIR}/platform/service/udelay/src/sl_udelay_armv6m_gcc.S)
set_property(SOURCE ${SILABS_GSDK_DIR}/platform/service/udelay/src/sl_udelay_armv6m_gcc.S PROPERTY LANGUAGE C)

# ==============================================================================
# Compile definitions
# ==============================================================================

target_compile_definitions(ot-config INTERFACE
    EFR32MG12P432F1024GL125=1
    SL_BOARD_NAME="BRD4161A"
    SL_BOARD_REV="A03"
    SL_COMPONENT_CATALOG_PRESENT=1
    BUFFER_SIZE_DOWN=0
    BUFFER_SIZE_UP=768
    SL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0
    SL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>
    RTT_USE_ASM=0
    SEGGER_RTT_SECTION="SEGGER_RTT"
)

target_compile_definitions(ot-config INTERFACE
    OPENTHREAD_CONFIG_ENABLE_BUILTIN_MBEDTLS=0
    OPENTHREAD_CORE_CONFIG_PLATFORM_CHECK_FILE="openthread-core-efr32-config-check.h"
    OPENTHREAD_PROJECT_CORE_CONFIG_FILE="openthread-core-efr32-config.h"
)

target_compile_definitions(example_vendor-rcp-uart-mbedtls-config INTERFACE
    MBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>
    MBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>
)

target_include_directories(example_vendor-rcp-uart-mbedtls-config BEFORE INTERFACE
    autogen
    config
)

target_link_libraries(example_vendor-rcp-uart-mbedtls PUBLIC example_vendor-rcp-uart-mbedtls-config)
target_link_libraries(example_vendor-rcp-uart PUBLIC example_vendor-rcp-uart-mbedtls-config)

target_compile_definitions(example_vendor-rcp-uart PRIVATE 
        OPENTHREAD_COPROCESSOR=1
        OPENTHREAD_RADIO=1
)

target_compile_options(example_vendor-rcp-uart PRIVATE 
    # GNU C flags
    $<$<COMPILE_LANG_AND_ID:C,GNU>:
        "SHELL:-mcpu=cortex-m4"
        "SHELL:-mthumb"
        "SHELL:-mfpu=fpv4-sp-d16"
        "SHELL:-mfloat-abi=softfp"
        "SHELL:-std=c99"
        "SHELL:-Wall"
        "SHELL:-Wextra"
        "SHELL:-Os"
        "SHELL:-fdata-sections"
        "SHELL:-ffunction-sections"
        "SHELL:-fomit-frame-pointer"
        "SHELL:-imacros sl_gcc_preinclude.h"
        "SHELL:-imacros sl_gcc_preinclude.h"
        "SHELL:--specs=nano.specs"
        "SHELL:-g"
    > 
)

# ==============================================================================
# Linking
# ==============================================================================
set(LD_FILE "${CMAKE_CURRENT_SOURCE_DIR}/autogen/linkerfile.ld")

target_link_libraries(example_vendor-rcp-uart
    PUBLIC
        -lstdc++
        -lgcc
        -lc
        -lm
        -lnosys
        example_vendor-rcp-uart-config

    PRIVATE
        -T${LD_FILE}
        -Wl,--gc-sections

        ot-config
)

target_link_options(example_vendor-rcp-uart PRIVATE 
    -mcpu=cortex-m4
    -mthumb
    -mfpu=fpv4-sp-d16
    -mfloat-abi=softfp
    -Wl,--gc-sections
)

# ==============================================================================
# Static libraries from GSDK
# ==============================================================================
set(GSDK_LIBS
    "${SILABS_GSDK_DIR}/platform/emdrv/nvm3/lib/libnvm3_CM4_gcc.a"
    "${SILABS_GSDK_DIR}/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg12_gcc_release.a"
)

# Import GSDK static libs and set a dependency on the GSDK library
# This will ensure proper linking order
foreach(lib_file ${GSDK_LIBS})
    # Parse lib name, stripping .a extension
    get_filename_component(lib_name ${lib_file} NAME_WE)
    set(imported_lib_name "silabs-${lib_name}")

    # Add as an IMPORTED lib
    add_library(${imported_lib_name} STATIC IMPORTED)
    set_target_properties(${imported_lib_name}
        PROPERTIES
            IMPORTED_LOCATION "${lib_file}"
            IMPORTED_LINK_INTERFACE_LIBRARIES example_vendor-rcp-uart
    )
    target_link_libraries(example_vendor-rcp-uart PUBLIC ${imported_lib_name})
endforeach()
