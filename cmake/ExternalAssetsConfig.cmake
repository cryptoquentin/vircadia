# Base URL for externally downloaded files

include("${CMAKE_CURRENT_SOURCE_DIR}/cmake/macros/ExternalAssetsUtils.cmake")

set(USE_IPFS_EXTERNAL_BUILD_ASSETS true CACHE STRING "Enable IPFS gateway for external assets (default: true)")
set(USE_DIRECT_EXTERNAL_BUILD_ASSETS true CACHE STRING "Enable direct links for external assets (default: true)")

set(EXTERNAL_BUILD_ASSETS_DIRECT_BASE_URLS
    "https://athena-public.s3.amazonaws.com"
    "http://motofckr9k.ddns.net"
    "https://data.moto9000.moe"
    CACHE
    STRING "Direct base urls for external assets"
)

set(EXTERNAL_BUILD_ASSETS_IPFS_BASE_URLS
    "http://localhost:8080/ipfs"
    "http://ipfs.vircadia.dev/ipfs"
    "https://cf-ipfs.com/ipfs"
    "https://gateway.ipfs.io/ipfs"
    "https://cloudflare-ipfs.com/ipfs"
    "https://ipfs.cf-ipfs.com/ipfs"
    "https://ipfs.io/ipfs"
    CACHE
    STRING "IPFS gateway urls for external assets"
)

set(EXTERNAL_OPENSSL_ANDROID_PATH "dependencies/android/openssl-1.1.0g_armv8.tgz%3FversionId=AiiPjmgUZTgNj7YV1EEx2lL47aDvvvAW")
set(EXTERNAL_OPENSSL_ANDROID_IPFS_CID "QmaEg57qXbqs9vdpET6KJ4PGAovvi6qyWZU3jiAAKTS7zc")
set(EXTERNAL_OPENSSL_ANDROID_SHA512 "5d7bb6e5d3db2340449e2789bcd72da821f0e57483bac46cf06f735dffb5d73c1ca7cc53dd48f3b3979d0fe22b3ae61997c516fc0c4611af4b4b7f480e42b992")
set(EXTERNAL_OPENSSL_ANDROID_MD5 "cabb681fbccd79594f65fcc266e02f32")
define_external_asset_urls(OPENSSL_ANDROID)

set(EXTERNAL_HIFI_AUDIO_CODEC_ANDROID_PATH "dependencies/codecSDK-android-2.0.zip")
set(EXTERNAL_HIFI_AUDIO_CODEC_ANDROID_IPFS_CID "QmPCNwBvM79Qwc9wenu6x8FAsndMB3pDgBXjanSZF5w6f2")
set(EXTERNAL_HIFI_AUDIO_CODEC_ANDROID_SHA512 "d8c42ab5880c4250a2f69a61ce8123538182b6f2e7e23ecf24faefcab1640f0c3c4e6119d74313bd532ed8cc2feeb64cabaccf502f78097bc93a22ef1acbe172")
set(EXTERNAL_HIFI_AUDIO_CODEC_ANDROID_MD5 "aef2a852600d498d58aa586668191683")
define_external_asset_urls(HIFI_AUDIO_CODEC_ANDROID)

set(EXTERNAL_HIFI_AUDIO_CODEC_LINUX_PATH "dependencies/codecSDK-linux-2.0.zip")
set(EXTERNAL_HIFI_AUDIO_CODEC_LINUX_IPFS_CID "QmaomCLnMThar7GgGgaMMCHkHyFfQp5Ev1xmaokJjJTGwc")
set(EXTERNAL_HIFI_AUDIO_CODEC_LINUX_SHA512 "e361a52bd173d33681b4c9f002d719615136154fb60d5cc23570fc66cd5e3a1332ede2ad6db28c40bc790abcc152fc32c9f629e41a3af97e7b7e708d8716296e")
set(EXTERNAL_HIFI_AUDIO_CODEC_LINUX_MD5 "67fb7755f9bcafb98a9fceea53bc7481")
define_external_asset_urls(HIFI_AUDIO_CODEC_LINUX)

set(EXTERNAL_HIFI_AUDIO_CODEC_MAC_PATH "dependencies/codecSDK-mac-2.0.zip")
set(EXTERNAL_HIFI_AUDIO_CODEC_MAC_IPFS_CID "QmdvwMP1gUjb7moABgRYWaBDYbZCgCPk5jvi6vhRrFWRtM")
set(EXTERNAL_HIFI_AUDIO_CODEC_MAC_SHA512 "1ffc7068db8b537d25da1ec02c5347b20537eee25a8fa4bf35124c6e6866d26ec3d068bf2582750621595c49a6377f822491b2d405aa5bd8212f92758ec9ad8e")
set(EXTERNAL_HIFI_AUDIO_CODEC_MAC_MD5 "21649881e7d5dc94f922179be96f76ba")
define_external_asset_urls(HIFI_AUDIO_CODEC_MAC)

set(EXTERNAL_HIFI_AUDIO_CODEC_WIN_PATH "dependencies/codecSDK-win-2.0.zip")
set(EXTERNAL_HIFI_AUDIO_CODEC_WIN_IPFS_CID "Qmebq9DwYdU82RRG39vY1xY23SRYMCTWnFez2onvZYL766")
set(EXTERNAL_HIFI_AUDIO_CODEC_WIN_SHA512 "8bd3c0c95718db324494b1199ca8e4a1e27b412e2a88e807aa1948f0c221be5aec7f4b1c21725fc23bf589aa4b8aecf669ec36a13376b0632a3c744ecc4dec3a")
set(EXTERNAL_HIFI_AUDIO_CODEC_WIN_MD5 "9199d4dbd6b16bed736b235efe980e67")
define_external_asset_urls(HIFI_AUDIO_CODEC_WIN)

set(EXTERNAL_CRASHPAD_WIN_PATH "dependencies/crashpad_062317.1.zip")
set(EXTERNAL_CRASHPAD_WIN_IPFS_CID "QmRYxYkUYrsVy6noKwEQmZPyRxRoWbeuDSkwWN6ShsZsNF")
set(EXTERNAL_CRASHPAD_WIN_SHA512 "6d9122eaca6f353575b83a35edfc8296ed9976d70ec2159727f3d1e6f5351ea35ce3872a6db4132700203a22b01920e481ef0925fea87dc4eaa301d8d8b7047e")
set(EXTERNAL_CRASHPAD_WIN_MD5 "9c84b77f5f23daf939da1371825ed2b1")
define_external_asset_urls(CRASHPAD_WIN)

set(EXTERNAL_CRASHPAD_LINUX_PATH "dependencies/crashpad_linux_f1943fcb.tar.bz2")
set(EXTERNAL_CRASHPAD_LINUX_IPFS_CID "QmTGJDdazJJ1KAT369YsA7rqfQoKsKboBQYFaVPrkxB96U")
set(EXTERNAL_CRASHPAD_LINUX_SHA512 "157e9fd2996e16fe4f1c9161ff79dd453cbb98df69964572d371fa2c416013bd1c2e82362681b9960a83d7056f3acecca507adcab35027ed04bd1df7bf391af0")
set(EXTERNAL_CRASHPAD_LINUX_MD5 "e0949e5988905471c63c399833879482")
define_external_asset_urls(CRASHPAD_LINUX)

set(EXTERNAL_CRASHPAD_MAC_PATH "/dependencies/crashpad_mac_070318.zip")
set(EXTERNAL_CRASHPAD_MAC_IPFS_CID "QmRw6SNfP9Ykg6Nc3XKUxfoEnvy78AZQVo6PNFhPPTyrFS")
set(EXTERNAL_CRASHPAD_MAC_SHA512 "412f7fa9b9183a69426e74189a54103f8728c5ef813cbf5d478a711fe4390c9637cfe17486e037f43d6411f166e0ca84c36e0a93bedec151a0a3592214011efc")
set(EXTERNAL_CRASHPAD_MAC_MD5 "ba1501dc163591ac2d1be74946967e2a")
define_external_asset_urls(CRASHPAD_MAC)

set(EXTERNAL_GIFCREATOR_PATH "dependencies/GifCreator.zip")
set(EXTERNAL_GIFCREATOR_IPFS_CID "QmYhfxZu3e9RXmQkyRDiPYZecd9WTqupbpEQ1X24yiSdCs")
set(EXTERNAL_GIFCREATOR_SHA512 "8fb3108a1aa183086339fdca6261ea0b2cbba29fb27dccefb30f6879534c6a4075a746eff9e248b904e3027fdf9349bda725d316c0e114ef06bc2389fb150bd8")
set(EXTERNAL_GIFCREATOR_MD5 "8ac8ef5196f47c658dce784df5ecdb70")
define_external_asset_urls(GIFCREATOR)

set(EXTERNAL_GLAD32ES_PATH "dependencies/glad/glad32es.zip")
set(EXTERNAL_GLAD32ES_IPFS_CID "QmTwR9KipJk8TzFTYRjv5L7CXrobu52gJgdd1UHrzH83Bx")
set(EXTERNAL_GLAD32ES_SHA512 "2e02ac633eed8f2ba2adbf96ea85d08998f48dd2e9ec9a88ec3c25f48eaf1405371d258066327c783772fcb3793bdb82bd7375fdabb2ba5e2ce0835468b17f65")
set(EXTERNAL_GLAD32ES_MD5 "6a641d8c49dee4c895fa59315f5682a6")
define_external_asset_urls(GLAD32ES)

set(EXTERNAL_GLAD45_PATH "dependencies/glad/glad45.zip")
set(EXTERNAL_GLAD45_IPFS_CID "QmbjNP91tE1QUoCoxNZMnnM2hR8L63KsnHFSufjZUiN9Hy")
set(EXTERNAL_GLAD45_SHA512 "653a7b873f9fbc52e0ab95006cc3143bc7b6f62c6e032bc994e87669273468f37978525c9af5efe36f924cb4acd221eb664ad9af0ce4bf711b4f1be724c0065e")
set(EXTERNAL_GLAD45_MD5 "cfb19b3cb5b2f8f1d1669fb3150e5f05")
define_external_asset_urls(GLAD45)

set(EXTERNAL_NEURON_PATH "dependencies/neuron_datareader_b.12.2.zip")
set(EXTERNAL_NEURON_IPFS_CID "QmW7x5eahwGxCUEvu4whF52wQL9eEmvwRDdvMeDpS3FL1K")
set(EXTERNAL_NEURON_SHA512 "ab65aefd4f058260ccf4a351a5705a951d3ae7cdf2ff53be6ba5fef9824645e6351c36ddb2cae259e65e0922bc713ef9cfb673fb61eade04d58ee9a00ac5f225")
set(EXTERNAL_NEURON_MD5 "84273ad2200bf86a9279d1f412a822ca")
define_external_asset_urls(NEURON)

set(EXTERNAL_LIBOVR_PLATFORM_PATH "dependencies/OVRPlatformSDK_v1.10.0.zip")
set(EXTERNAL_LIBOVR_PLATFORM_IPFS_CID "Qmbttwek9X4e6Gk7efbFejDN8pHWDB87ZPJSBDDMqK6kna")
set(EXTERNAL_LIBOVR_PLATFORM_SHA512 "66f87f17c95fdb0d7b3f72b38e4869bd24ec2a427620d860552a01ade4b047837f8cd1335cc827dcc6e70aeda4e231e069d44a48027d8e21dfc0a112e17d6161")
set(EXTERNAL_LIBOVR_PLATFORM_MD5 "e6c8264af16d904e6506acd5172fa0a9")
define_external_asset_urls(LIBOVR_PLATFORM)

set(EXTERNAL_LIBOVR_MAC_PATH "dependencies/ovr_sdk_macos_0.5.0.1.tar.gz")
set(EXTERNAL_LIBOVR_MAC_IPFS_CID "QmfEv3FSfqMDTggDiPMAAgbM5NptztPL82KTTLEUXBKmGr")
set(EXTERNAL_LIBOVR_MAC_SHA512 "a8805930da6fc49aee45a65215b7a1addea0a0d986e628b2cbf40ed508cd87c3653ae5f385d6ae562bb556a863f4aec2da658b8b9636540a7456b44a9f86bc1e")
set(EXTERNAL_LIBOVR_MAC_MD5 "0a0785a04fb285f64f62267388344ad6")
define_external_asset_urls(LIBOVR_MAC)

set(EXTERNAL_LIBOVR_WIN_PATH "dependencies/ovr_sdk_win_1.35.0.zip")
set(EXTERNAL_LIBOVR_WIN_IPFS_CID "QmWqcranwMn9yApa5mRZr2qa19HccyWJy3w3mYZXs1y6h4")
set(EXTERNAL_LIBOVR_WIN_SHA512 "5fdec2444129da4b72f4bf60768f41213fabf82fae50f42b3409a1f7c6c4c1111a19a472d1a1f9b63ed0e422d13f326619c3e2700706a8655e4624c71ea3641b")
set(EXTERNAL_LIBOVR_WIN_MD5 "1e3e8b2101387af07ff9c841d0ea285e")
define_external_asset_urls(LIBOVR_WIN)

set(EXTERNAL_POLYVOX_PATH "dependencies/polyvox-master-2015-7-15.zip")
set(EXTERNAL_POLYVOX_IPFS_CID "QmdMFAUFGtEpeUXsoVjdTJSLmYX7r1RhzfHDmSHDoD5xAN")
set(EXTERNAL_POLYVOX_SHA512 "cc04cd43ae74b9c7bb065953540c0048053fcba6b52dc4218b3d9431fba178d65ad4f6c53cc1122ba61d0ab4061e99a7ebbb15db80011d607c5070ebebf8eddc")
set(EXTERNAL_POLYVOX_MD5 "9ec6323b87e849ae36e562ae1c7494a9")
define_external_asset_urls(POLYVOX)

set(EXTERNAL_WASAPI_PATH "dependencies/qtaudio_wasapi13.zip")
set(EXTERNAL_WASAPI_IPFS_CID "QmRyyVeoRWUvEdQowjB5U2HL9FyK8yyHhVaJafWcRjCaqH")
set(EXTERNAL_WASAPI_SHA512 "f5391a9f8d063fc3d810437c58c43af7d152aa583feedffa77f69efc86a8de5c27f95c07a8ce23a5d4932032e797a5b90ddac830739a2b4cc731f51df6b2b7a0")
set(EXTERNAL_WASAPI_MD5 "aa56a45f19c18caee13d29a40d1d7d28")
define_external_asset_urls(WASAPI)

set(EXTERNAL_QTLITE_MAC_PATH "dependencies/qtlite/qt-lite-5.9.9-mac.zip")
set(EXTERNAL_QTLITE_MAC_IPFS_CID "QmYJ9KDJ5yJnkjyKPZ185Bg7xeh5YA9xrV2qovUZPRoz3e")
set(EXTERNAL_QTLITE_MAC_SHA512 "c3a8f201219a4e20b0e630af17f8bcc30f73a44aa0aa3916d5243ff328b61017c8f876d48ee9ba83a60a4930c3fed84057cf8fdad6ab75f3cb20d6f39584e8db")
set(EXTERNAL_QTLITE_MAC_MD5 "0cd78d40e5f539a7e314cf99b6cae0d0")
define_external_asset_urls(QTLITE_MAC)

set(EXTERNAL_QTLITE_WIN_PATH "dependencies/qtlite/qt-lite-5.9.9-win-oct-15-2019.zip")
set(EXTERNAL_QTLITE_WIN_IPFS_CID "QmeNuG6kBx5JEWKC2VdiDzpkkNHHKX1rBKDrJHjsYWHC3h")
set(EXTERNAL_QTLITE_WIN_SHA512 "6a093db304a66f69aaa0ae9633e3f8ac924b6ee6a5d24bfb8871200c9d9f4d13b95f2b6db844f6b566745cab670cc95211e0ba9ce8ba3698a19c85ae34e57993")
set(EXTERNAL_QTLITE_WIN_MD5 "0176277bca37d219e83738caf3a698eb")
define_external_asset_urls(QTLITE_WIN)

set(EXTERNAL_QUAZIP_PATH "dependencies/quazip-0.7.3.zip")
set(EXTERNAL_QUAZIP_IPFS_CID "QmbcWzS7xxX61wX6F78pRTmvAJyYyqnTiecAsLZFDfbGJL")
set(EXTERNAL_QUAZIP_SHA512 "b2d812b6346317fd6d8f4f1344ad48b721d697c429acc8b7e7cb776ce5cba15a59efd64b2c5ae1f31b5a3c928014f084aa1379fd55d8a452a6cf4fd510b3afcc")
set(EXTERNAL_QUAZIP_MD5 "ed03754d39b9da1775771819b8001d45")
define_external_asset_urls(QUAZIP)

set(EXTERNAL_SIXENSE_OLDER_PATH "dependencies/SixenseSDK_062612.zip")
set(EXTERNAL_SIXENSE_OLDER_IPFS_CID "QmTWV7BtTwSoncPbUy5wV4wrrWPYAV79McBMw12XsGZKdC")
set(EXTERNAL_SIXENSE_OLDER_SHA512 "72fc2ca479cc1b559d3b895074532aa59c41101a3ab64c7b2aedf87c6102562ff4418a0be23c6c5e8effbcb4f7e4f7119b87291cbaccfb324fc4efa9f542efaf")
set(EXTERNAL_SIXENSE_OLDER_MD5 "10cc8dc470d2ac1244a88cf04bc549cc")
define_external_asset_urls(SIXENSE_OLDER)

set(EXTERNAL_SIXENSE_PATH "dependencies/SixenseSDK_071615.zip")
set(EXTERNAL_SIXENSE_IPFS_CID "QmZEEMCJQvw81iTDXHbXCcV1GENLFYhV4d1MmDpdNnPEii")
set(EXTERNAL_SIXENSE_SHA512 "34e7b1be1d04c239956a4410c760ddba087985df659bdbc70c2028d43fcd9507b17c08658d6dad896f7a824cf89d28962afd67430e7ca9816599c55cfc5efdd6")
set(EXTERNAL_SIXENSE_MD5 "752a3901f334124e9cffc2ba4136ef7d")
define_external_asset_urls(SIXENSE)

set(EXTERNAL_SIXENSE_NEWER_PATH "dependencies/SixenseSDK_102215.zip")
set(EXTERNAL_SIXENSE_NEWER_IPFS_CID "QmSi454wwErJk5WJSQAXhuJKGBdoMMYZN9u2Qc4Tq54HsK")
set(EXTERNAL_SIXENSE_NEWER_SHA512 "45489debcd37c442e2c737a1c7b743bc504fbcea4feea87556eebc3d58b4447f1ea3bc5cfd31d8bf043c4a61aa021dc265e3251d8ae38d273558fc4b6ce51f4c")
set(EXTERNAL_SIXENSE_NEWER_MD5 "93c3a6795cce777a0f472b09532935f1")
define_external_asset_urls(SIXENSE_NEWER)

set(EXTERNAL_STEAMWORKS_PATH "dependencies/steamworks_sdk_137.zip")
set(EXTERNAL_STEAMWORKS_IPFS_CID "QmXbYAu3SAfwm1uSdgo5WQJnNNLJMBEn77Y9163Ao3mF1e")
set(EXTERNAL_STEAMWORKS_SHA512 "c2e07de5e8c3e294583112dc2b3ef63c10275d9b63bea56abb5859ba73a94a11be9510ad6ceda8759ec1733c33ecadd6e6df8cdd669fda02516f282db388b9c1")
set(EXTERNAL_STEAMWORKS_MD5 "95ba9d0e3ddc04f8a8be17d2da806cbb")
define_external_asset_urls(STEAMWORKS)

set(EXTERNAL_TBB_LINUX_PATH "dependencies/tbb2017_20170604oss_lin_slim.tar.gz")
set(EXTERNAL_TBB_LINUX_IPFS_CID "QmNZdMnkQEySCiiBnAnP6UDFpxssSSHjCyD2QNoq3FrZqZ")
set(EXTERNAL_TBB_LINUX_SHA512 "290453e34521270d140d92902c39e78ba532b6a68476a1a0fef7a9d22cd511f118ca97b1a8370fac0e73352aefe6d23495ba9af682f3f032e88c346f1e38d9c0")
set(EXTERNAL_TBB_LINUX_MD5 "2a5c721f40fa3503ffc12c18dd00011c")
define_external_asset_urls(TBB_LINUX)

set(EXTERNAL_TBB_MAC_PATH "dependencies/tbb2017_20170604oss_mac_slim.tar.gz")
set(EXTERNAL_TBB_MAC_IPFS_CID "QmU1j4BQNwhoFXo3mztCbB8fxESi1YEq9mpAg75ExdpxM8")
set(EXTERNAL_TBB_MAC_SHA512 "3753ab94f769b6ac675c53eda8d47af655077ef468e7df2aa174236999d534f6040b3880488c49bf02ca049f0227dc84aefbebe00b76755b1014ca9eddb16f6c")
set(EXTERNAL_TBB_MAC_MD5 "62bde626b396f8e1a85c6a8ded1d8105")
define_external_asset_urls(TBB_MAC)

set(EXTERNAL_TBB_WIN_PATH "dependencies/tbb2017_20170604oss_win_slim.zip")
set(EXTERNAL_TBB_WIN_IPFS_CID "QmXKBGacHDhEpwo6Cn8L8ktTAovvkwE12H3EKVSUDV3oX4")
set(EXTERNAL_TBB_WIN_SHA512 "dcefd2b066b6330e948b22dcd24e90d698a5f2bae509818f0616e6013d7b97b731add6f0ce9e75bc37f550a833a8c04eca104de35492f6e10b3214d8c5689a40")
set(EXTERNAL_TBB_WIN_MD5 "065934458e3db88397f3d10e7eea536c")
define_external_asset_urls(TBB_WIN)

set(EXTERNAL_WEBRTC_WIN_PATH "dependencies/vcpkg/webrtc-m84-20210105-windows.zip")
set(EXTERNAL_WEBRTC_WIN_IPFS_CID "QmTGRx4WutvHVBNn5CbSVRWesgJp77AbWD9aD1uqVhXrse")
set(EXTERNAL_WEBRTC_WIN_SHA512 "12847f7e9df2e0539a6b017db88012a8978b1aa37ff2e8dbf019eb7438055395fdda3a74dc669b0a30330973a83bc57e86eca6f59b1c9eff8e2145a7ea4a532a")
set(EXTERNAL_WEBRTC_WIN_MD5 "2a87b2a9c2708699551c9ada959dd217")
define_external_asset_urls(WEBRTC_WIN)

set(EXTERNAL_WEBRTC_LINUX_PATH "dependencies/vcpkg/webrtc-m84-gcc-linux.tar.xz")
set(EXTERNAL_WEBRTC_LINUX_IPFS_CID "QmT6neDQBSTADbyov3NUgWF9amhwPhbHLi6RCkYe54BJkZ")
set(EXTERNAL_WEBRTC_LINUX_SHA512 "f7c5f93566e2e79241cbb9628ab47302dd48739bb6a022c351be75553060fac4221892d094306a572cb3ec94c5031d7e812f07e7b3c0102be8c01b8c231f8ea0")
set(EXTERNAL_WEBRTC_LINUX_MD5 "8874b956d996ddcf84da96b596499e7b")
define_external_asset_urls(WEBRTC_LINUX)

set(EXTERNAL_VHACD_PATH "dependencies/v-hacd-master.zip")
set(EXTERNAL_VHACD_IPFS_CID "QmYiRZNwwr12KwHxtRg7e4YhaQiNk3KZCkuArHrzvqXGJc")
set(EXTERNAL_VHACD_SHA512 "5d9bd4872ead9eb3574e4806d6c4f490353a04036fd5f571e1e44f47cb66b709e311abcd53af30bae0015a690152170aeed93209a626c28ebcfd6591f3bb036f")
set(EXTERNAL_VHACD_MD5 "3bfc94f8dd3dfbfe8f4dc088f4820b3e")
define_external_asset_urls(VHACD)

set(EXTERNAL_ARISTO_PATH "seth/aristo-0.8.1-windows.zip")
set(EXTERNAL_ARISTO_IPFS_CID "QmUMeiviwXioL69qE3XSkahsy5kSan7qgr7cHA2Aweu8bQ")
set(EXTERNAL_ARISTO_SHA512 "05179c63b72a1c9f5be8a7a2b7389025da683400dbf819e5a6199dd6473c56774d2885182dc5a11cb6324058d228a4ead832222e8b3e1bebaa4c61982e85f0a8")
set(EXTERNAL_ARISTO_MD5 "9ded0ab23ef40e3ae89a86cc6f8f8b1b")
define_external_asset_urls(ARISTO)

set(EXTERNAL_SRANIPAL_PATH "seth/sranipal-1.1.0.1-2-windows.zip")
set(EXTERNAL_SRANIPAL_IPFS_CID "QmeNA56S5nD9sxnk71kG7BzsTRZ699i7R5B9jzqaEruTM8")
set(EXTERNAL_SRANIPAL_SHA512 "f1f68f6beef52ae5e034bc3f44932ae0800ee187b75d80e76ae7b17b8ddd7bc54c039ce5594d231035e3caf3a61fed36f38621a860b4fb20170cb0176d9c28f0")
set(EXTERNAL_SRANIPAL_MD5 "fda535d84fbe9d3fe3be745e25c531c8")
define_external_asset_urls(SRANIPAL)

set(EXTERNAL_WEBRTC_MAC_PATH "seth/webrtc-m78-osx.tar.gz")
set(EXTERNAL_WEBRTC_MAC_IPFS_CID "QmcBytGSRMESoVicep6hhyKTvfKzyNALK4ENWQwWFRixsF")
set(EXTERNAL_WEBRTC_MAC_SHA512 "8b547da921cc96f5c22b4253a1c9e707971bb627898fbdb6b238ef1318c7d2512e878344885c936d4bd6a66005cc5b63dfc3fa5ddd14f17f378dcaa17b5e25df")
set(EXTERNAL_WEBRTC_MAC_MD5 "2b2962585ec6be3b0f22b988548b9ffe")
define_external_asset_urls(WEBRTC_MAC)

set(EXTERNAL_QT_WIN_PATH "dependencies/vcpkg/qt5-install-5.15.2-windows.tar.gz")
set(EXTERNAL_QT_WIN_IPFS_CID "QmdRF8Pm5AmABAcqbdcp5ZMv4H4DF5orzgTg4BooDVAbCh")
set(EXTERNAL_QT_WIN_SHA512 "075d944cf0c65f312ebed35af21262db960cea1fe26534fa05a6e395b0259d7088cc3cdb6670e138cf0ba3763f9cef15cd1eae2d8093dbb443f076ac366aa998")
set(EXTERNAL_QT_WIN_MD5 "a2e07b26d62d99d2d423709b60715b73")
define_external_asset_urls(QT_WIN)

set(EXTERNAL_QT_MAC_PATH "dependencies/vcpkg/qt5-install-5.15.2-macos.tar.gz")
set(EXTERNAL_QT_MAC_IPFS_CID "QmNhxEsBZxA4vqhQwFhVkV8bhN2epqaPZ3ZvuNL3K4Dj6j")
set(EXTERNAL_QT_MAC_SHA512 "f2ef5b8dea2bb777e98b6d5b950601bc54b19a07413b3d892bf09496446367e4acb724817b3ec9ef6b4fcf68306e7ef985a29175c50845a54549019af22847fb")
set(EXTERNAL_QT_MAC_MD5 "b6dfff98eb7d5d73196d5531e524ebc7")
define_external_asset_urls(QT_MAC)

set(EXTERNAL_QT_LINUX_PATH "dependencies/vcpkg/qt5-install-5.15.2-ubuntu-18.04-amd64.tar.xz")
set(EXTERNAL_QT_LINUX_IPFS_CID "QmTYc1hsai6n5TofuFfTn4QZJw5PVpcrrRsB2AvMfxwXFH")
set(EXTERNAL_QT_LINUX_SHA512 "4753831b835f6f7bb0867167e312a3ebdc36d30d7e6dd95c2278195da5a555cdf6f08129a926f6ffc012849ece37ad79257128b16b722f57ff582694c17a8519")
set(EXTERNAL_QT_LINUX_MD5 "f1da4749c4b22470349e8f8732a7b8be")
define_external_asset_urls(QT_LINUX)

set(EXTERNAL_VCPKG_WIN_CLIENT_PATH "dependencies/vcpkg/vcpkg-win32-client-20210122.zip")
set(EXTERNAL_VCPKG_WIN_CLIENT_IPFS_CID "QmQ3f1CTgHJQQT5me8bHqmXz3AkpZ5ezhFtUvyWiNUe77c")
set(EXTERNAL_VCPKG_WIN_CLIENT_SHA512 "3df86b7d58c827bf08b3b7744f456f414b86a6d9bd58a507924103bc5a88f01ee495ce1f0fbf2f5b27f1ef6bfb1526e580ec13d3b9f87a89a462b3c50589fd6a")
set(EXTERNAL_VCPKG_WIN_CLIENT_MD5 "68dc00a43930dbc7d10c78ed778e2422")
define_external_asset_urls(VCPKG_WIN_CLIENT)

set(EXTERNAL_VCPKG_WIN_PATH "dependencies/vcpkg/builds/vcpkg-win32.zip%3FversionId=3SF3mDC8dkQH1JP041m88xnYmWNzZflx")
set(EXTERNAL_VCPKG_WIN_IPFS_CID "QmbCS95BAgW4CK6imrmJFx9eDAwrMr9CPbVm6XxjJqvK8x")
set(EXTERNAL_VCPKG_WIN_SHA512 "dadc2a0a8a6d391ff05c5dbe9cac969e84f585fda9f4954d87052b3b9dac79c4985d145295217a3bfeef16490927a78f2a8958203ae7c610a70ab66ba9283ab5")
set(EXTERNAL_VCPKG_WIN_MD5 "607623468884a7f324a71c816bd01994")
define_external_asset_urls(VCPKG_WIN)

set(EXTERNAL_VCPKG_MAC_CLIENT_PATH "dependencies/vcpkg/builds/vcpkg-osx-client.tgz%3FversionId=j0b4azo_zTlH_Q9DElEWOz1UMYZ2nqQw")
set(EXTERNAL_VCPKG_MAC_CLIENT_IPFS_CID "QmTdfiS3cNvVXAzw22cKc8fCdwn9u6bjQwJ5ns4X9tQNsy")
set(EXTERNAL_VCPKG_MAC_CLIENT_SHA512 "e13b11c0db8b730537912dcac0183f06e974acd4c3b6fd35f7634baf6e02ee862222e0cd0587af41c2975dd5a2213cd2729e846ed0924a418a6f37e9920f7338")
set(EXTERNAL_VCPKG_MAC_CLIENT_MD5 "2d4d0791450f9b41052b7ff062fec88a")
define_external_asset_urls(VCPKG_MAC_CLIENT)

set(EXTERNAL_VCPKG_MAC_PATH "dependencies/vcpkg/builds/vcpkg-osx.tgz%3FversionId=6JrIMTdvpBF3MAsjA92BMkO79Psjzs6Z")
set(EXTERNAL_VCPKG_MAC_IPFS_CID "Qmf29mA7Wgwx8SwSN9N1dxSYNSi9DMV5yFSdBsr6nHZLCf")
set(EXTERNAL_VCPKG_MAC_SHA512 "7a6ebb91b68169d8c1363120ea2cef22821e600d61ed1c42a142c00b24a18a2b991378e83275906571c44cd1f5102c9dd6c04ac634773332e6d0b9f6050e98b9")
set(EXTERNAL_VCPKG_MAC_MD5 "9c445d3eb60c6ac2dad19ea2339a97cb")
define_external_asset_urls(VCPKG_MAC)

set(EXTERNAL_VCPKG_LINUX_AARCH64_PATH "dependencies/vcpkg/vcpkg-linux_aarch64_2021.05.12.tar.xz")
set(EXTERNAL_VCPKG_LINUX_AARCH64_IPFS_CID "QmR5Qw82RnFSAdM9RgJWP7NPs75sTM23TN4g8NVY5NabJK")
set(EXTERNAL_VCPKG_LINUX_AARCH64_SHA512 "7abb7aa96200e3cb5a6d0ec1c6ee63aa7886df2d1fecf8f9ee41ebe4d2cea0d4143274222c4941cb7aca61e4048229fdfe9eb2cd36dd559dd26db871a3b3ed61")
set(EXTERNAL_VCPKG_LINUX_AARCH64_MD5 "8d8026535cf2c93d12a08dc62cf51bf1")
define_external_asset_urls(VCPKG_LINUX_AARCH64)

set(EXTERNAL_VCPKG_LINUX_CLIENT_PATH "dependencies/vcpkg/builds/vcpkg-linux-client.tgz%3FversionId=y7mct0gFicEXz5hJy3KROBugcLR56YWf")
set(EXTERNAL_VCPKG_LINUX_CLIENT_IPFS_CID "QmNYJqF4potroor7MT12qAEHJxgGWAAeGk2L64yHi6Nkw2")
set(EXTERNAL_VCPKG_LINUX_CLIENT_SHA512 "4f5f1b78d5ddb7aeb5b5212f0b77b5d2e8ba11e82518aaf8a777298f8f781948028afc4e4e9fb236c3e510b2d8ba6333deb16119dce1286d90edd006a68e5625")
set(EXTERNAL_VCPKG_LINUX_CLIENT_MD5 "e001b48533fa03dbd680bd4e7cb5f10b")
define_external_asset_urls(VCPKG_LINUX_CLIENT)

set(EXTERNAL_VCPKG_ANDROID_PATH "dependencies/vcpkg/vcpkg-arm64-android.tar.gz")
set(EXTERNAL_VCPKG_ANDROID_IPFS_CID "QmTEM6CnoX1S79m3qcQ3SMJqVBYLRRoMByD37GCudJueeq")
set(EXTERNAL_VCPKG_ANDROID_SHA512 "832f82a4d090046bdec25d313e20f56ead45b54dd06eee3798c5c8cbdd64cce4067692b1c3f26a89afe6ff9917c10e4b601c118bea06d23f8adbfe5c0ec12bc3")
set(EXTERNAL_VCPKG_ANDROID_MD5 "05739319a6fa7c35e963489bba19d987")
define_external_asset_urls(VCPKG_ANDROID)

set(EXTERNAL_NSIS_HIFI_PLUGINS_PATH "dependencies/NSIS-hifi-plugins-1.0.tgz")
set(EXTERNAL_NSIS_HIFI_PLUGINS_IPFS_CID "Qma5P9GptDWrGcw1PrVkYgUoSyWidVgStGPFUVMoZEGiSn")
set(EXTERNAL_NSIS_HIFI_PLUGINS_SHA512 "20ce8c84bcdef2d05b75a215fa403720655dc375407de7ee9db084e2c1a04c9893dcc77f5cd736b2311c5e16ac7155bbc79f487c254b577768cf4e9e44d2125b")
set(EXTERNAL_NSIS_HIFI_PLUGINS_MD5 "01d3051a5ddb2b96a5579abbfc9fb6d3")
define_external_asset_urls(NSIS_HIFI_PLUGINS)

set(EXTERNAL_QT_UBUNTU_AARCH64_PATH "vircadia_packages/qt5-install-5.15.2-ubuntu-18.04-aarch64_test.tar.xz")
set(EXTERNAL_QT_UBUNTU_AARCH64_IPFS_CID "Qmf2Zu4qQpRbt6SBN5jQQ11Qmm4uZvr7ajfUYY6DRpJF3s")
set(EXTERNAL_QT_UBUNTU_AARCH64_SHA512 "29dc3e61f850d779515700451543ace6de2554322a35d5522f6679eb0aa690fefe9369ac7798f1b302ac8195535a1db79f6dc4270cbbd7b6bd82ec84d6342e0b")
set(EXTERNAL_QT_UBUNTU_AARCH64_MD5 "8753e7e0feee7e7778db1e534a85cc3e")
define_external_asset_urls(QT_UBUNTU_AARCH64)

set(EXTERNAL_QT_DEBIAN_AARCH64_PATH "vircadia_packages/qt5-install-5.15.2-debian-10-aarch64.tar.xz")
set(EXTERNAL_QT_DEBIAN_AARCH64_IPFS_CID "QmaKvFfX3NAfB7oSnf366pwZsR5Vf143hAyGDb8w6fQYuL")
set(EXTERNAL_QT_DEBIAN_AARCH64_SHA512 "c18f8a6ff2ca091fb14947e437c3179368d85c1da33876b134d2a7048b6715aca0fddf5ea89f34ee52d5922ec296b13ae457902c4c3417f1b5017fab7be11d98")
set(EXTERNAL_QT_DEBIAN_AARCH64_MD5 "097069159999c32b6cf626fe05f22e7a")
define_external_asset_urls(QT_DEBIAN_AARCH64)

