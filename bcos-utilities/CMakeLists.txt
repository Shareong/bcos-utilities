file(GLOB SRC_LIST "*.cpp")
file(GLOB HEADERS "*.h")

add_library(${BCOS_UTILITIES_TARGET} ${SRC_LIST} ${HEADERS})

# install dependencies
find_package(ZLIB REQUIRED)
find_package(Boost COMPONENTS log filesystem chrono thread serialization iostreams system)
target_link_libraries(${BCOS_UTILITIES_TARGET} PUBLIC Boost::log Boost::chrono Boost::iostreams Boost::filesystem Boost::thread Boost::serialization Boost::system ZLIB::ZLIB)

