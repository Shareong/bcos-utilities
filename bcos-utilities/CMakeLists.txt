file(GLOB SRC_LIST "*.cpp")
file(GLOB HEADERS "*.h")

add_library(${BCOS_UTILITIES_TARGET} ${SRC_LIST} ${HEADERS})

find_package(Boost CONFIG QUIET REQUIRED log chrono system filesystem iostreams thread serialization)
find_package(ZLIB CONFIG REQUIRED)
find_library(BOOST_LOG_SETUP_LIB
             NAMES libboost_log_setup-mt-a64.a libboost_log_setup-mt-d-a64.a libboost_log_setup-mt.a libboost_log_setup-mt-d.a
             PATHS ${HUNTER_INSTALL_DIR}
             )

if(BOOST_LOG_SETUP_LIB)
    message(STATUS "Found Boost.Log Setup library: ${BOOST_LOG_SETUP_LIB}")
else()
    message(FATAL_ERROR "Boost.Log Setup library not found")
endif()

target_link_libraries(${BCOS_UTILITIES_TARGET} PUBLIC Boost::log Boost::chrono Boost::iostreams Boost::filesystem Boost::thread Boost::serialization ${BOOST_LOG_SETUP_LIB} ZLIB::zlib)
