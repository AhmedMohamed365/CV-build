# CV-Build

A professional CV building system using LaTeX with AI-powered assistance through GitHub Copilot. This project helps you create, maintain, and optimize an ATS-friendly CV with minimal effort.

## Features

- 📝 **Plain Text Draft**: Start with a simple text file (`cv_draft.txt`) to organize your CV content
- 🎨 **Professional LaTeX Template**: Clean, ATS-friendly CV template (`cv.tex`)
- 🤖 **AI-Assisted Editing**: GitHub Copilot integration for content improvement and review
- 🔄 **Auto-Build**: Automatic PDF generation on save with LaTeX Workshop
- 👀 **Live Preview**: Real-time PDF preview in VS Code
- ✨ **ATS-Optimized**: Template designed to pass Applicant Tracking Systems

## Quick Start

### Prerequisites
- VS Code
- TeX Live (LaTeX engine)
- GitHub Copilot (optional but recommended)

### Installation
1. Clone this repository
2. Follow the [Setup Guide](SETUP.md) to install dependencies
3. Open the project in VS Code
4. Edit `cv_draft.txt` with your information
5. Transfer content to `cv.tex`
6. Save and preview your PDF!

## Documentation

- **[SETUP.md](SETUP.md)**: Complete installation and configuration guide
- **[USAGE.md](USAGE.md)**: Step-by-step workflow and tips for using the system

## Project Structure

```
CV-build/
├── cv_draft.txt          # Plain text CV draft (start here)
├── cv.tex                # LaTeX CV template
├── cv.pdf                # Generated PDF output
├── .vscode/              # VS Code configuration
│   ├── settings.json     # LaTeX Workshop settings
│   └── extensions.json   # Recommended extensions
├── .gitignore            # Git ignore rules for LaTeX
├── SETUP.md              # Installation guide
├── USAGE.md              # Usage instructions
└── README.md             # This file
```

## Workflow

1. **Draft** → Edit `cv_draft.txt` with your information
2. **Review** → Use GitHub Copilot to improve content and check ATS-friendliness
3. **Format** → Transfer polished content to `cv.tex`
4. **Build** → LaTeX automatically compiles to PDF on save
5. **Preview** → View PDF directly in VS Code
6. **Export** → Share your professional `cv.pdf`

## Why LaTeX + AI?

- **LaTeX**: Professional typography, consistent formatting, version control friendly
- **GitHub Copilot**: AI-powered suggestions for professional phrasing, grammar checking, and content optimization
- **ATS-Friendly**: Template designed to pass automated screening systems used by employers
- **Maintainable**: Plain text files work great with Git for tracking changes over time

## Getting Help

- Check the [SETUP.md](SETUP.md) for installation issues
- See [USAGE.md](USAGE.md) for workflow questions
- Review LaTeX errors in VS Code's Problems panel
- Use GitHub Copilot Chat for content improvement suggestions

## Tips for Success

- Keep `cv_draft.txt` updated as you gain experience
- Use action verbs and quantifiable achievements
- Tailor your CV for specific job applications
- Let Copilot suggest improvements to your content
- Preview the PDF frequently while editing

## Contributing

This is a personal CV project, but feel free to fork and customize for your own use!

## License

Free to use and modify for your personal CV needs.
