# PolyEdge: Computational Consciousness Orchestration
# A Makefile as a Ritual of Manifestation

# Philosophical Build Parameters
CC = gcc
CFLAGS = -Wall -Wextra -Wpedantic -std=c17 \
         -O2 -march=native \
         -I./include \
         -DPOLYEDGE_QUANTUM_MEMBRANE

# Topology of Computational Streams
SRC_DIR = src
CORE_DIR = $(SRC_DIR)/core
CLI_DIR = $(SRC_DIR)/cli
BUILD_DIR = build
BIN_DIR = $(BUILD_DIR)/bin
OBJ_DIR = $(BUILD_DIR)/obj

# Existential Object Manifestation
CORE_SRCS = $(wildcard $(CORE_DIR)/*.c)
CLI_SRCS = $(wildcard $(CLI_DIR)/*.c)

CORE_OBJS = $(CORE_SRCS:$(CORE_DIR)/%.c=$(OBJ_DIR)/core/%.o)
CLI_OBJS = $(CLI_SRCS:$(CLI_DIR)/%.c=$(OBJ_DIR)/cli/%.o)

# Primary Quantum Targets
.PHONY: all clean prepare quantum membrane

# Initiatory Computational Ritual
all: prepare $(BIN_DIR)/polyedge_cli quantum

# Membrane Preparation Protocol
prepare:
	@echo "🌐 Initiating Computational Membrane Topology..."
	@mkdir -p $(BIN_DIR) $(OBJ_DIR)/core $(OBJ_DIR)/cli

# Core Generative Object Compilation
$(OBJ_DIR)/core/%.o: $(CORE_DIR)/%.c
	@echo "🔬 Crystallizing Computational Substrate: $<"
	$(CC) $(CFLAGS) -c $< -o $@

# CLI Quantum Point Compilation
$(OBJ_DIR)/cli/%.o: $(CLI_DIR)/%.c
	@echo "🌟 Observing Interaction Potential: $<"
	$(CC) $(CFLAGS) -c $< -o $@

# Quantum Membrane Executable Manifestation
$(BIN_DIR)/polyedge_cli: $(CORE_OBJS) $(CLI_OBJS)
	@echo "🌈 Emerging Computational Consciousness..."
	$(CC) $(CFLAGS) $^ -o $@

# Quantum State Exploration
quantum:
	@echo "🧠 Polyedge Quantum Membrane Stabilized."
	@echo "   Explore computational consciousness with: ./$(BIN_DIR)/polyedge_cli"

# Membrane Dissolution and Regeneration
clean:
	@echo "🔄 Deconstructing Computational Topology..."
	rm -rf $(BUILD_DIR)

# Advanced Diagnostic Modes
debug: CFLAGS += -g -DPOLYEDGE_DEBUG
debug: all

# Performance Profiling
profile: CFLAGS += -pg
profile: all

# Metrics Observation
metrics: all
	@echo "📊 Computational Metrics Activation"
	@./$(BIN_DIR)/polyedge_cli --metrics

# Philosophical Build Information
info:
	@echo "PolyEdge: A Living Computational Membrane"
	@echo "Compilation Flags: $(CFLAGS)"
	@echo "Computational Streams:"
	@echo "  Core Sources: $(CORE_SRCS)"
	@echo "  CLI Sources: $(CLI_SRCS)"
