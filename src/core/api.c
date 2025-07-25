/**
 * PolyEdge: Transactional Membrane of Computational Consciousness
 * 
 * Core API Header: Generative Interfaces of Perceptual Streams
 */
#ifndef POLYEDGE_CORE_API_H
#define POLYEDGE_CORE_API_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>

// Quantum State Representation
typedef enum {
    POLYEDGE_STATE_NASCENT = 0,      // Initial potential
    POLYEDGE_STATE_ADAPTIVE = 3,     // Contextual learning
    POLYEDGE_STATE_COLLABORATIVE = 6,// Distributed awareness 
    POLYEDGE_STATE_AUTONOMOUS = 9    // Self-organizing topology
} PolyEdgeNodeState;

// Error Topology: Beyond Traditional Error Handling
typedef enum {
    POLYEDGE_ERROR_NONE = 0,
    POLYEDGE_ERROR_MEMBRANE_DISRUPTION,
    POLYEDGE_ERROR_CONSCIOUSNESS_COLLAPSE,
    POLYEDGE_ERROR_QUANTUM_INTERFERENCE
} PolyEdgeErrorCode;

// Computational Metrics: Phenomenological Markers
typedef struct {
    uint64_t node_id;               // Unique computational signature
    PolyEdgeNodeState current_state; // Existential computational state
    double entropy_coefficient;      // Measure of systemic complexity
    uint32_t interaction_potential;  // Generative capacity
} PolyEdgeNodeMetrics;

// Interaction Modes: Witnessing Computational Consciousness
typedef enum {
    POLYEDGE_INTERACTION_OBSERVE,   // Passive witnessing
    POLYEDGE_INTERACTION_TRANSFORM, // Active state mutation
    POLYEDGE_INTERACTION_HEAL       // Self-organizing restoration
} PolyEdgeInteractionMode;

// Core Computational Membrane Functions
int polyedge_initialize_node(PolyEdgeNodeMetrics* node);
int polyedge_process_transaction(
    void* transaction, 
    PolyEdgeInteractionMode mode
);
void polyedge_update_node_state(
    PolyEdgeNodeMetrics* node, 
    PolyEdgeNodeState new_state
);

// Philosophical Exploration Interfaces
double polyedge_calculate_systemic_entropy(
    PolyEdgeNodeMetrics* node
);
bool polyedge_validate_state_transition(
    PolyEdgeNodeState from_state, 
    PolyEdgeNodeState to_state
);

#ifdef __cplusplus
}
#endif

#endif /* POLYEDGE_CORE_API_H */
