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

# ==============================================================================
# mbedtls library
# ==============================================================================
add_library(example_vendor-rcp-uart-mbedtls)

# Interface lib for sharing mbedtls config to relevant targets
add_library(example_vendor-rcp-uart-mbedtls-config INTERFACE)

set_target_properties(example_vendor-rcp-uart-mbedtls
    PROPERTIES
        C_STANDARD 99
        CXX_STANDARD 11
)

# ==============================================================================
# Includes
# ==============================================================================
set(SILABS_MBEDTLS_DIR "${SILABS_GSDK_DIR}/util/third_party/crypto")
target_include_directories(example_vendor-rcp-uart-mbedtls
    PUBLIC
        ${SILABS_GSDK_DIR}/platform/Device/SiliconLabs/EFR32MG12P/Include
        ${SILABS_GSDK_DIR}/platform/common/inc
        ${SILABS_GSDK_DIR}/platform/CMSIS/Core/Include
        ${SILABS_GSDK_DIR}/platform/driver/debug/inc
        ${SILABS_GSDK_DIR}/platform/service/device_init/inc
        ${SILABS_GSDK_DIR}/platform/emdrv/dmadrv/inc
        ${SILABS_GSDK_DIR}/platform/emdrv/common/inc
        ${SILABS_GSDK_DIR}/platform/emlib/inc
        ${SILABS_GSDK_DIR}/platform/emdrv/gpiointerrupt/inc
        ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/config
        ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_mbedtls_support/inc
        ${SILABS_GSDK_DIR}/platform/service/mpu/inc
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
        ${SILABS_GSDK_DIR}/platform/common/toolchain/inc
        ${SILABS_GSDK_DIR}/platform/service/system/inc
        ${SILABS_GSDK_DIR}/platform/service/sleeptimer/inc
        ${SILABS_GSDK_DIR}/platform/security/sl_component/sl_protocol_crypto/src
        ${SILABS_GSDK_DIR}/platform/emdrv/uartdrv/inc
        ${SILABS_GSDK_DIR}/platform/service/udelay/inc
)

# ==============================================================================
# Sources
# ==============================================================================
set(SILABS_MBEDTLS_SOURCES
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
)

target_sources(example_vendor-rcp-uart-mbedtls PRIVATE ${SILABS_MBEDTLS_SOURCES})

# ==============================================================================
# Compile definitions
# ==============================================================================
target_compile_definitions(example_vendor-rcp-uart-mbedtls PRIVATE ${OT_PLATFORM_DEFINES})

# ==============================================================================
# Linking
# ==============================================================================
target_link_options(example_vendor-rcp-uart-mbedtls PRIVATE
    -mcpu=cortex-m4
    -mthumb
    -mfpu=fpv4-sp-d16
    -mfloat-abi=softfp
    
    
    
    -Wl,--gc-sections
)

target_link_libraries(example_vendor-rcp-uart-mbedtls
    PRIVATE
        ot-config
        example_vendor-rcp-uart-config
)
