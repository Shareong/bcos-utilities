file(GLOB SRC_LIST "*.cpp")
file(GLOB HEADERS "*.h")

SET(Boost_USE_STATIC_LIBS ON)
if(HUNTER_BOOST)
    hunter_add_package(Boost COMPONENTS all)
endif()
find_package(Boost 1.69.0 REQUIRED COMPONENTS log chrono system filesystem iostreams thread)

add_library(${BCOS_UTILITIES_TARGET} ${SRC_LIST} ${HEADERS})
target_link_libraries(${BCOS_UTILITIES_TARGET} PUBLIC Boost::log Boost::chrono Boost::iostreams Boost::filesystem Boost::thread)