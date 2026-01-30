include(FetchContent)

FetchContent_Declare(
    googletest
    GIT_REPOSITORY 	https://github.com/google/googletest.git
    GIT_TAG 		main
    GIT_PROGRESS   	TRUE
)
FetchContent_MakeAvailable(googletest)

add_executable(mutual_enum_tests
    test_mutual_enum.cpp
)

target_link_libraries(mutual_enum_tests
    PRIVATE
        mutual_enum
        GTest::gtest_main
)

set_project_warnings(mutual_enum_tests)

include(GoogleTest)
gtest_discover_tests(mutual_enum_tests)
