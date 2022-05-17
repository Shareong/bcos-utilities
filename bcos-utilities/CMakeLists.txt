file(GLOB SRC_LIST "*.cpp")
file(GLOB HEADERS "*.h")

add_library(${BCOS_UTILITIES_TARGET} ${SRC_LIST} ${HEADERS})

SET(Boost_USE_STATIC_LIBS ON)
find_package(Boost 1.69.0 COMPONENTS log chrono system filesystem iostreams thread)
if(NOT Boost_FOUND OR NOT Boost_log_FOUND OR NOT Boost_chrono_FOUND OR NOT Boost_system_FOUND OR NOT Boost_filesystem_FOUND OR NOT Boost_iostreams_FOUND OR NOT Boost_thread_FOUND)
    message("Not found installed boost! Use hunter")
    hunter_add_package(Boost COMPONENTS all)
    find_package(Boost CONFIG QUIET REQUIRED log chrono system filesystem iostreams thread)
endif()

target_link_libraries(${BCOS_UTILITIES_TARGET} PUBLIC Boost::log Boost::chrono Boost::iostreams Boost::filesystem Boost::thread)
