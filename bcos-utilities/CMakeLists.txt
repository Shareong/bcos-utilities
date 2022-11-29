file(GLOB SRC_LIST "*.cpp")
file(GLOB HEADERS "*.h")

add_library(${BCOS_UTILITIES_TARGET} ${SRC_LIST} ${HEADERS})
find_package(Boost CONFIG QUIET REQUIRED log chrono system filesystem iostreams thread)
find_package(range-v3 CONFIG REQUIRED)
target_link_libraries(${BCOS_UTILITIES_TARGET} PUBLIC Boost::log Boost::chrono Boost::iostreams Boost::filesystem Boost::thread)
