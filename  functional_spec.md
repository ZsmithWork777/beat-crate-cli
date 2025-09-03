# Functional Specification – Beat Crate CLI

## 1. Introduction
Beat Crate CLI is a Ruby-based command-line tool designed to manage and track beats (or songs). It allows users to “play” songs by entering their titles, view a history of played songs, and access basic commands for navigation.

---

## 2. Problem Statement
Music producers and hobbyists often need a quick way to keep track of what beats they’re working on without opening a full app. This CLI offers a simple, distraction-free solution.

---

## 3. Features
- Play a song by typing its name (tracks current song and adds to history).
- List all previously played songs in order.
- Display helpful commands.
- Quit the program safely.

---

## 4. User Stories
- **As a user**, I want to enter a song title so that I can mark it as the currently playing beat.
- **As a user**, I want the app to ignore blank inputs so my history stays clean.
- **As a user**, I want to type `list` to see all songs I’ve played so far.
- **As a user**, I want to type `help` to see available commands.
- **As a user**, I want to type `quit` to end the session gracefully.

---

## 5. Functional Requirements
- On start, print a welcome message with available commands.
- Input handling:
  - **Song name:** Plays the song, updates `current_song`, and appends it to `history`.
  - **list:** Displays songs played so far or `No history yet.` if empty.
  - **help:** Displays command usage.
  - **quit/exit:** Ends the app gracefully.
  - Ignores blank input.
- Track:
  - `current_song` as a string (or `nil` when none playing).
  - `history` as an array of strings.

---

## 6. Commands Summary