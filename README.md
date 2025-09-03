# Beat Crate CLI

A Ruby command-line application to catalog beats and quickly list, search, and inspect metadata (title, BPM, key, mood).  

This project was built as part of the CLI assignment to demonstrate Ruby fundamentals, object-oriented programming, and automated testing with Minitest.

---

## 📦 Features
- List all beats
- Show a beat by ID
- Search beats by title, key, or mood
- Export beats to JSON
- Tracks play history for each session
- Ignores blank input (input validation)

---

## ⚙️ Requirements
- Ruby 3.x  
- Bundler (`gem install bundler`)

---

## 🚀 Installation / Setup
1. Clone this repository:  
   ```bash
   git clone https://github.com/ZsmithWork777/beat-crate-cli.git
   cd beat-crate-cli

   From the project root, run all tests:
   ruby tests/test_music_cli.rb