file(GLOB SRC_LIST "*.cpp")
file(GLOB HEADERS "*.h")

SET(Boost_USE_STATIC_LIBS ON)
install_dep(Boost 1.69.0 log chrono system filesystem iostreams thread)

add_library(${BCOS_UTILITIES_TARGET} ${SRC_LIST} ${HEADERS})
target_link_libraries(${BCOS_UTILITIES_TARGET} PUBLIC Boost::log Boost::chrono Boost::iostreams Boost::filesystem Boost::thread)