# CV-Build Setup Guide

This guide will help you set up your LaTeX CV environment with VS Code, TeX Live, and AI-assisted editing through GitHub Copilot.

## Prerequisites

### 1. Install TeX Live (LaTeX Engine)

#### Windows
1. Download TeX Live from: https://www.tug.org/texlive/acquire-netinstall.html
2. Run the installer (`install-tl-windows.exe`)
3. Follow the installation wizard (full installation recommended, ~7GB)
4. Add TeX Live to PATH (installer should do this automatically)

#### macOS
```bash
# Using MacTeX (includes TeX Live)
brew install --cask mactex
# Or download from: https://www.tug.org/mactex/
```

#### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install texlive-full
```

#### Linux (Fedora)
```bash
sudo dnf install texlive-scheme-full
```

### 2. Install Visual Studio Code
Download from: https://code.visualstudio.com/

### 3. Install Required VS Code Extensions

Open VS Code and install these extensions:

1. **LaTeX Workshop** (james-yu.latex-workshop)
   - Command Palette (Ctrl+Shift+P / Cmd+Shift+P) → `Extensions: Install Extensions`
   - Search for "LaTeX Workshop"
   - Click Install

2. **GitHub Copilot** (github.copilot)
   - Requires GitHub Copilot subscription
   - Install from Extensions marketplace

3. **GitHub Copilot Chat** (github.copilot-chat)
   - For interactive AI assistance
   - Install from Extensions marketplace

4. **Code Spell Checker** (streetsidesoftware.code-spell-checker) - Optional but recommended
   - Helps catch typos in your CV

## Verify Installation

### Check TeX Live Installation
```bash
# Check if pdflatex is installed
pdflatex --version

# Should output something like:
# pdfTeX 3.141592653-2.6-1.40.XX (TeX Live 2023)
```

### Check VS Code Extensions
1. Open VS Code
2. Click the Extensions icon (or Ctrl+Shift+X / Cmd+Shift+X)
3. Verify that LaTeX Workshop and GitHub Copilot are installed

## Project Setup

### 1. Clone or Open the Repository
```bash
git clone <your-repo-url>
cd CV-build
code .
```

### 2. VS Code Configuration
The repository includes pre-configured settings in `.vscode/settings.json`:
- Automatic build on save
- PDF preview in VS Code tab
- Clean auxiliary files after build
- GitHub Copilot enabled for all file types

### 3. First Build

1. Open `cv.tex` in VS Code
2. Save the file (Ctrl+S / Cmd+S)
3. LaTeX Workshop will automatically compile the PDF
4. View the PDF by clicking the "View LaTeX PDF" button in the top right, or use Command Palette → `LaTeX Workshop: View LaTeX PDF`

## File Structure

```
CV-build/
├── cv_draft.txt          # Text draft with your CV data
├── cv.tex                # LaTeX CV template
├── cv.pdf                # Generated PDF (after build)
├── .vscode/
│   ├── settings.json     # VS Code LaTeX configuration
│   └── extensions.json   # Recommended extensions
├── .gitignore            # Excludes LaTeX auxiliary files
├── SETUP.md              # This file
├── USAGE.md              # How to use the CV system
└── README.md             # Project overview
```

## Troubleshooting

### LaTeX Compilation Errors

**Error: pdflatex not found**
- Ensure TeX Live is installed and in your PATH
- Restart VS Code after installation
- Check PATH: `echo $PATH` (Linux/macOS) or `echo %PATH%` (Windows)

**Error: Missing LaTeX packages**
```bash
# Install missing packages using tlmgr
tlmgr install <package-name>

# Example for fontawesome5
tlmgr install fontawesome5
```

**Error: Permission denied (Linux/macOS)**
```bash
# Update tlmgr itself first
sudo tlmgr update --self
# Then install packages
sudo tlmgr install <package-name>
```

### VS Code Extension Issues

**LaTeX Workshop not working**
1. Check Output panel: View → Output → Select "LaTeX Workshop"
2. Verify settings: Preferences → Settings → Search "LaTeX Workshop"
3. Reload VS Code: Command Palette → "Developer: Reload Window"

**GitHub Copilot not activating**
1. Check Copilot status in status bar (bottom right)
2. Sign in: Command Palette → "GitHub Copilot: Sign In"
3. Verify subscription at https://github.com/settings/copilot

### PDF Not Updating

1. Clean auxiliary files: Command Palette → "LaTeX Workshop: Clean up auxiliary files"
2. Rebuild: Command Palette → "LaTeX Workshop: Build LaTeX project"
3. Check for errors in the "Problems" panel (Ctrl+Shift+M / Cmd+Shift+M)

## Next Steps

After setup is complete, refer to [USAGE.md](USAGE.md) for instructions on:
- Editing your CV draft
- Using AI agents to improve content
- Building and previewing your CV
- Exporting the final PDF

## Additional Resources

- LaTeX Workshop Documentation: https://github.com/James-Yu/LaTeX-Workshop
- TeX Live Documentation: https://www.tug.org/texlive/doc.html
- GitHub Copilot Documentation: https://docs.github.com/en/copilot
- LaTeX Tutorial: https://www.overleaf.com/learn
