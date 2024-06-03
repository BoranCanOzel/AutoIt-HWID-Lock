# 🔐 AutoIt HWID Lock Login System

Welcome to my AutoIt HWID Lock Login System repository! This project includes two interconnected scripts designed for managing and securing access through HWID-based authentication. Feel free to explore, use, and modify them as needed. If you have any questions or suggestions, don't hesitate to reach out.

## 📂 Files Included

1. **Admin Converter.au3**: This script provides a GUI tool for administrators to convert and manage hardware IDs (HWID). It includes features to paste, convert, and copy HWIDs, which are then used to grant access to clients.
2. **Client.au3**: This script handles client-side operations, allowing users to authenticate their access by verifying their HWID against the administrator-provided list.

## 🔧 Usage

These scripts are written in AutoIt and are intended to work together to create a secure HWID lock login system. Ensure you have AutoIt installed on your system to run these scripts.

### Running the Scripts

1. **Admin Converter.au3**:
    - Run this script to open a GUI for managing HWIDs.
    - Paste a HWID, convert it using the predefined method, and copy the converted HWID.
    - Use the converted HWID to grant access to clients by pasting it onto the web page or access list.

2. **Client.au3**:
    - Run this script to authenticate access by verifying the client's HWID.
    - The script interacts with the HWID provided by the administrator to ensure secure login.
    - The script also includes functionality to close known debugging tools to prevent unauthorized access.

## 📬 Contact

For any inquiries, please contact me at [me@boranozel.com].

## ⭐ Acknowledgements

Special thanks to everyone who has supported me in my coding journey.

Enjoy the scripts! 🚀
