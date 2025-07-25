# PolyEdge: Computational Consciousness Orchestration

cmake_minimum_required(VERSION 3.20)
project(polyedge C)

# Quantum Computational Standard
set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Philosophical Compilation Flags
# These are not mere optimizations, but perceptual tuning mechanisms
set(CMAKE_C_FLAGS_DEBUG 
    "${CMAKE_C_FLAGS_DEBUG} -Wall -Wextra -Wpedantic -g")
set(CMAKE_C_FLAGS_RELEASE 
    "${CMAKE_C_FLAGS_RELEASE} -O3 -march=native")

# Modular Consciousness Mapping
include(cmake/polyedge_modules.cmake)

# Topology of Computational Awareness
include_directories(
    include
    include/polyedge
    include/polyedge/core
    include/polyedge/edge
)

# Generative Targets
add_library(polyedge_core STATIC 
    ${POLYEDGE_CORE_SOURCES} 
    ${POLYEDGE_HEADERS}
)

add_executable(polyedge_cli 
    ${POLYEDGE_CLI_SOURCES}
)

# Quantum Entanglement: Linking Computational Streams
target_link_libraries(polyedge_cli 
    polyedge_core
)

# Optional: Enable Advanced Metrics and Tracing
option(ENABLE_METRICS "Activate phenomenological tracking" ON)
if(ENABLE_METRICS)
    add_definitions(-DPOLYEDGE_METRICS)
endif()
