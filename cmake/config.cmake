hunter_config(
    Boost VERSION "1.83"
    URL "https://psychz.dl.sourceforge.net/project/boost/boost/1.83.0/boost_1_83_0.tar.bz2"
    SHA1 75b1f569134401d178ad2aaf97a2993898dd7ee3
    CMAKE_ARGS CONFIG_MACRO=BOOST_UUID_RANDOM_PROVIDER_FORCE_POSIX 
)

