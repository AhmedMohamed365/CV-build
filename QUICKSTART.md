# Quick Start Guide

Get your CV up and running in 5 minutes!

## Step 1: Install Prerequisites (One-time setup)

### Install TeX Live

**macOS:**
```bash
brew install --cask mactex
```

**Ubuntu/Debian:**
```bash
sudo apt-get install texlive-full
```

**Windows:**
Download from https://www.tug.org/texlive/

### Install VS Code
Download from https://code.visualstudio.com/

### Install Extensions
Open VS Code and install:
1. **LaTeX Workshop** (james-yu.latex-workshop)
2. **GitHub Copilot** (github.copilot) - Optional but recommended

## Step 2: Open the Project

```bash
git clone <your-repo-url>
cd CV-build
code .
```

## Step 3: Fill in Your Information

1. Open `cv_draft.txt`
2. Replace all `[placeholders]` with your information
3. Save the file

## Step 4: Use AI to Improve Content (Optional)

1. Select any section in `cv_draft.txt`
2. Open Copilot Chat (Ctrl+Alt+I or Cmd+Alt+I)
3. Ask: "Make this more professional and ATS-friendly"
4. Review and accept suggestions

## Step 5: Transfer to LaTeX Template

1. Open `cv.tex`
2. Copy your polished content from `cv_draft.txt` to the corresponding sections in `cv.tex`
3. Update:
   - Header section (name, contact info)
   - Professional summary
   - Skills
   - Experience
   - Education
   - Projects

## Step 6: Build and Preview

1. Save `cv.tex` (Ctrl+S or Cmd+S)
2. LaTeX Workshop automatically builds the PDF
3. View PDF:
   - Click "View LaTeX PDF" button in top right, OR
   - Command Palette (Ctrl+Shift+P) → "LaTeX Workshop: View LaTeX PDF"

## Step 7: Review and Iterate

1. Check the PDF for formatting
2. Make adjustments in `cv.tex`
3. Save to rebuild
4. Repeat until satisfied

## Step 8: Export

Your CV is ready at `cv.pdf`! 

Rename for applications:
```bash
cp cv.pdf "FirstName_LastName_CV.pdf"
```

## Common First-Time Issues

### PDF not building?
- Check Problems panel (Ctrl+Shift+M)
- View LaTeX Workshop output: View → Output → "LaTeX Workshop"
- Common issue: Missing package
  ```bash
  tlmgr install fontawesome5 roboto
  ```

### Copilot not working?
- Check you're signed in (bottom-right corner)
- Verify subscription at https://github.com/settings/copilot

### Want to skip VS Code?
Use Overleaf.com:
1. Create account at https://overleaf.com
2. New Project → Upload Project
3. Upload `cv.tex`
4. Click Recompile

## Next Steps

- Read [USAGE.md](USAGE.md) for detailed workflow
- Check [COPILOT_PROMPTS.md](COPILOT_PROMPTS.md) for AI assistance tips
- Review [FAQ.md](FAQ.md) for common questions

## Tips for Success

✓ Start with `cv_draft.txt` - easier to organize thoughts
✓ Use Copilot for professional phrasing
✓ Quantify achievements with numbers
✓ Keep it to 1-2 pages
✓ Tailor for each job application
✓ Proofread carefully

## Getting Help

- **Installation issues**: See [SETUP.md](SETUP.md)
- **Usage questions**: See [USAGE.md](USAGE.md)
- **Common problems**: See [FAQ.md](FAQ.md)
- **LaTeX errors**: Check TeX Stack Exchange (https://tex.stackexchange.com/)

---

**That's it!** You now have a professional, ATS-friendly CV. Good luck with your applications! 🚀
