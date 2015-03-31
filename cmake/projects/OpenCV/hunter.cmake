# This is a header-like file, so include guards needed
if(DEFINED HUNTER_CMAKE_PROJECTS_OPENCV_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_OPENCV_HUNTER_CMAKE_ 1)
endif()

# Load used modules
include(hunter_add_version)
include(hunter_add_version_start)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_add_package)

# Print version that we are trying to download (i.e. from 'config.cmake')
hunter_add_version_start(OpenCV)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    OpenCV
    VERSION
    "3.0.0-beta"
    URL
    "https://github.com/Itseez/opencv/archive/3.0.0-beta.tar.gz"
    SHA1
    560895197d1a61ed88fab9ec791328c4c57c0179
)

#  ae4cb571ab4fdca3c7be57f0de19743f823daf3f

hunter_add_version(
    PACKAGE_NAME
    OpenCV
    VERSION
    "2.4.11"
    URL
    "https://github.com/Itseez/opencv/archive/2.4.11.tar.gz"
    SHA1
    2c9547e3147779001811d01936aed38f560929fc
)

hunter_add_version(
    PACKAGE_NAME
    OpenCV
    VERSION
    "2.4.10"
    URL
    "https://github.com/Itseez/opencv/archive/2.4.10.tar.gz"
    SHA1
    7018f9495920f974258502b9b8b26af16d7ee427
)

# Pick a download scheme
hunter_pick_scheme(
    DEFAULT
    url_sha1_release_debug # For separate release/debug generators, like Makefile
    COMBINED
    url_sha1_combined_release_debug # For Xcode and Visual Studio
)

# Download package.
# Two versions of library will be build:
#     * libexample_A.a
#     * libexample_Ad.a
hunter_download(PACKAGE_NAME OpenCV)