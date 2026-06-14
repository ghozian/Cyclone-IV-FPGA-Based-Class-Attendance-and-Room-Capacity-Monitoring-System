# FPGA-Based Room Capacity Monitoring System

## Overview

This project is a room capacity monitoring system implemented using FPGA and Verilog HDL. The system tracks the number of people entering and leaving a room through push-button inputs, displays the current occupancy on a seven-segment display, shows room status on an LED dot matrix, and provides audio notifications using a buzzer.

The system is designed to demonstrate digital system design concepts including finite state machines, counters, clock division, display multiplexing, and hardware interfacing.

---

## Features

- Real-time room occupancy monitoring
- Entry and exit counting
- Seven-segment display for occupancy count
- LED indicators for room status
- Dot matrix running text display
- Audio notification using buzzer
- Debounced push-button inputs
- Capacity limit protection

---

## System Status

| Occupancy | Status |
|------------|----------|
| 0 – 9 | SAFE |
| 10 – 19 | HALF |
| 20 | FULL |

---

## Hardware Components

- FPGA Development Board
- Push Buttons
- Seven Segment Display
- 8×8 LED Dot Matrix
- Buzzer
- LEDs

---

## Project Structure

```text
├── top_presensi_kelas.v
├── debounce.v
├── edge_detector.v
├── up_down_counter.v
├── status_logic.v
├── seven_segment_display.v
├── seven_segment_decoder.v
├── seven_segment_multiplex.v
├── dot_matrix_running_text.v
├── buzzer_controller.v
├── clock_divider.v
└── constraints.xdc
```

---

## Module Description

### Debounce

Removes mechanical bouncing effects from push-button inputs to ensure stable and accurate signal detection.

### Edge Detector

Generates a single clock-cycle pulse for every valid button press, preventing multiple counts from a single press.

### Up-Down Counter

Maintains the current room occupancy count by incrementing or decrementing based on entry and exit events.

### Status Logic

Determines room occupancy status (SAFE, HALF, or FULL) based on the current count value.

### Seven Segment Display

Separates occupancy data into tens and ones digits for display purposes.

### Seven Segment Decoder

Converts numerical values into seven-segment display patterns.

### Seven Segment Multiplex

Controls multiple seven-segment digits using time-division multiplexing.

### Dot Matrix Running Text

Displays scrolling messages such as:

- SAFE
- HALF
- FULL
- HADIR
- KELUAR

### Buzzer Controller

Provides audible notifications for entry, exit, and full-capacity conditions.

### Clock Divider

Generates lower-frequency clocks required by display scanning and buzzer operation.

### Top Module

Integrates all modules into a complete room monitoring system.

---

## System Workflow

```text
Push Button
      │
      ▼
 Debounce
      │
      ▼
Edge Detector
      │
      ▼
Up-Down Counter
      │
      ▼
 Status Logic
      │
 ┌────┼───────────────┐
 ▼    ▼               ▼
LED Seven Segment Dot Matrix
      │
      ▼
   Buzzer
```

---

## Display Behavior

### Seven Segment

Displays the current number of people inside the room.

Example:

```text
05
12
20
```

### Dot Matrix

Displays room information using scrolling text.

Examples:

```text
SAFE
HALF
FULL
HADIR
KELUAR
```

---

## Capacity Rules

- Minimum occupancy: 0 people
- Maximum occupancy: 20 people
- Counter cannot go below 0
- Counter cannot exceed 20

---

## Development Tools

- Verilog HDL
- Xilinx Vivado
- FPGA Development Board

---

## Learning Objectives

This project demonstrates:

- Digital Logic Design
- Verilog HDL Programming
- FPGA Implementation
- Finite State Machines (FSM)
- Clock Management
- Display Interfacing
- Embedded Hardware Design

---

## Authors
Ghozian & Zaskya
Final Project – Digital Systems Design

Department of Electrical Engineering

2026
