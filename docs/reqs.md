# Key Components

*   **User Interface:** Handles user interaction, input collection, and explanation delivery.
*   **Minimal Rules Module:** A standalone component dedicated to finding and processing "reguły minimalne".
*   **Fuzzy Inference Engine:** The core module executing the "wnioskowanie rozmyte" mechanism.
*   **Knowledge Base (KB):** The structured repository for production rules and domain knowledge.

# Key Requirements

### 0. Architecture

*   **Language:** Whole system is implemented using SWI-Prolog.

### 1. Architectural Separation
*   **Decoupled Logic:** The Knowledge Base must be strictly separated from the control/steering mechanisms. Avoid using steering facts to manage execution flow.
*   **Isolated Minimal Rules Module:** The module for finding "reguły minimalne" must function independently and include dedicated functionality for printing "atrybuty niezbędne" (indispensable attributes) and "reguły minimalne" (minimal rules).

### 2. Knowledge Base Specs & Naming
*   **Rule Count:** The KB must consist of approximately 100 production rules. This target strictly counts rules actively used during inference and user dialogue.
*   **Clear Naming Conventions:** All objects within the KB must feature clear, explicit names. This is especially critical for options presented to the user for selection.
*   **Dynamic Conclusions:** Final conclusions must not be statically retrieved from the baseline Knowledge Base; instead, they must be derived from production rules dynamically evaluated/created during the inference process.

### 3. Dialogue & Interface Mechanics
*   **Inference-Driven Dialogue:** The user dialogue must mirror the underlying inference process in real time, meaning it must display and utilize accumulated information as the session progresses.
*   **Flexible Questioning:** The interface must robustly support both single-answer (single-choice) and multi-answer (multiple-choice) questions.
