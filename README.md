# milib – Advanced Programming Final Project

This repository contains the source code and documentation for **milib**, an advanced programming project developed as the final assignment for the Advanced Programming course.

## 📚 Project Overview

**milib** is an eBook and audiobook management application designed to provide an experience similar to popular platforms like Google Books, Taghcheh, and Fidibo. The app lets users browse, search, and manage a personal digital library, supporting both e-books and audiobooks.

The project consists of:
- A Java server handling all backend functionality (user authentication, data management, etc.)
- A Flutter-based mobile application for interacting with the server

All server–client communication is via **sockets** (no Firebase or third-party services).

---

## 🚀 Features

- **User Authentication:**  
  Login and sign-up pages with secure credentials
- **Book Catalog:**  
  Browse, search, and view detailed book info
- **Personal Library:**  
  Users manage their own eBooks and audiobooks
- **Book Description:**  
  See detailed pages for each book
- **Audio Playback:**  
  Support for audiobooks (if implemented)
- **Multi-User Support:**  
  Server can handle simultaneous clients
- **Persistent Storage:**  
  Server saves all data; no data loss if restarted

Additional creative features and UI/UX improvements are encouraged and may earn bonus points.

---

## 🏗️ Project Structure

- `server/` – Java server source code
- `client/` – Flutter mobile app source code
- `AP_Project.pdf` – Full project assignment (Persian)
- `README.md` – You're reading it!

---

## ⚙️ Installation & Usage

### Prerequisites

- **Server:** Java 11+  
- **Client:** Flutter SDK 3.x  
- Android/iOS emulator or device for testing the app

### Running the Server

1. Navigate to the server directory:
   ```bash
   cd server
   ```
2. Compile and start the server:
   ```bash
   javac Main.java
   java Main
   ```
### Running the Client
1. Navigate to the client directory:
   ```bash
   cd client
   ```
2. Get Flutter dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```
4. Ensure the mobile app connects to the server’s IP and port (see project code/config for settings).
