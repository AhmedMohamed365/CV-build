# CV-Build Usage Guide

This guide explains how to use the CV-build system to create, edit, and maintain your professional CV using LaTeX and AI assistance.

## Workflow Overview

1. **Draft your CV content** in `cv_draft.txt`
2. **Use GitHub Copilot** to review and improve content
3. **Transfer data** to `cv.tex` LaTeX template
4. **Build and preview** the PDF automatically
5. **Iterate and refine** with AI assistance

## Step 1: Fill Out CV Draft

### Open and Edit cv_draft.txt

The `cv_draft.txt` file is structured to help you organize your CV information:

```
cv_draft.txt (Plain text format)
├── Personal Information
├── Professional Summary
├── Skills (Technical & Soft)
├── Professional Experience
├── Education
├── Projects
├── Certifications
└── Languages
```

### Fill in Your Information

1. Open `cv_draft.txt` in VS Code
2. Replace all placeholder text (in square brackets `[...]`) with your actual information
3. Add or remove sections as needed for your experience level

**Tips for writing ATS-friendly content:**
- Use standard section headings (Education, Experience, Skills)
- Include relevant keywords from job descriptions
- Use action verbs (Developed, Implemented, Led, Managed)
- Quantify achievements with numbers and percentages
- Avoid tables, images, and complex formatting in the draft

## Step 2: Use GitHub Copilot for Content Review

### Enable Copilot Chat

1. Open Copilot Chat: 
   - Click the chat icon in the left sidebar, or
   - Use Ctrl+Alt+I (Windows/Linux) or Cmd+Alt+I (macOS)

### Ask Copilot to Review Your Draft

Select text in `cv_draft.txt` and ask Copilot:

**Example prompts:**

```
"Review this professional summary and make it more impactful and ATS-friendly"

"Rewrite these bullet points using action verbs and quantifiable results"

"Is this job description clear and impressive? Suggest improvements"

"Check if this section contains relevant keywords for a [Job Title] position"

"Make this sound more professional and concise"

"What skills should I highlight for a [target position]?"
```

### Inline Suggestions

As you type in `cv_draft.txt`, Copilot will suggest:
- Completion of sentences
- Professional phrasing
- Industry-standard terminology
- Consistent formatting

Accept suggestions with `Tab` key or review alternatives with `Alt+]` / `Alt+[`

## Step 3: Transfer Content to LaTeX Template

### Open cv.tex

The LaTeX template (`cv.tex`) is pre-formatted and ATS-friendly. You'll copy content from your draft into the appropriate sections.

### Update Personal Information (Header)

```latex
\begin{center}
    {\Huge \scshape Your Full Name} \\ \vspace{1pt}
    \small 
    \faIcon{phone} \textbf{+1-XXX-XXX-XXXX} $|$ 
    \href{mailto:your.email@example.com}{\faIcon{envelope} \underline{your.email@example.com}} $|$ 
    ...
\end{center}
```

Replace with your actual contact information.

### Update Professional Summary

```latex
\section{Professional Summary}
\small{Your refined summary from cv_draft.txt}
```

### Update Skills

```latex
\section{Technical Skills}
 \begin{itemize}[leftmargin=0.15in, label={}]
    \small{\item{
     \textbf{Programming Languages}{: Your languages here} \\
     \textbf{Frameworks \& Libraries}{: Your frameworks here} \\
     ...
    }}
 \end{itemize}
```

### Update Experience Section

For each job:

```latex
\resumeSubheading
  {Job Title}{Month Year -- Present}
  {Company Name}{City, Country}
  \resumeItemListStart
    \resumeItem{Your achievement with quantifiable results}
    \resumeItem{Another accomplishment}
  \resumeItemListEnd
```

### Use Copilot While Editing LaTeX

With the LaTeX file open, Copilot can:
- Auto-complete similar entries
- Suggest proper LaTeX formatting
- Maintain consistent structure
- Fix syntax errors

**Example Copilot prompts for cv.tex:**

```
"Add a new job experience entry following the existing format"

"Create a project entry for my web application project"

"Format this bullet point to match the existing style"
```

## Step 4: Build and Preview PDF

### Automatic Build

The CV automatically rebuilds when you save `cv.tex`:

1. Make changes to `cv.tex`
2. Save the file (Ctrl+S / Cmd+S)
3. Wait 2-3 seconds for compilation
4. PDF updates automatically

### View PDF

**Option 1: Side-by-side view (Recommended)**
- Command Palette (Ctrl+Shift+P) → "LaTeX Workshop: View LaTeX PDF"
- Choose "View in VS Code tab"
- Arrange windows side-by-side (View → Editor Layout → Split Right)

**Option 2: External PDF viewer**
- Open `cv.pdf` in your system's default PDF viewer
- File will update automatically after each build

**Option 3: Quick preview**
- Click the preview icon in the top right of the editor (when cv.tex is open)

### Check for Errors

If the build fails:
1. Check the "Problems" panel (Ctrl+Shift+M / Cmd+Shift+M)
2. View detailed logs: View → Output → "LaTeX Workshop"
3. Common issues:
   - Missing closing braces `}`
   - Special characters need escaping: `\&` `\%` `\$` `\_`
   - Unclosed environments

## Step 5: Iterate and Refine

### Review the PDF

Look for:
- ✓ Consistent formatting
- ✓ No awkward line breaks
- ✓ Proper alignment
- ✓ No orphaned words
- ✓ Professional appearance

### Fine-tune with Copilot

Select problematic sections and ask:

```
"This bullet point is too long. Make it more concise"

"Suggest a better way to phrase this achievement"

"Add more technical details to this project description"

"Is this section well-organized? Suggest improvements"
```

### Adjust LaTeX Formatting

Common adjustments:

**Spacing:**
```latex
\vspace{-2pt}  % Reduce space
\vspace{2pt}   % Add space
```

**Line breaks:**
```latex
\\              % Force line break
\newline        % Alternative line break
```

**Emphasis:**
```latex
\textbf{Bold text}
\textit{Italic text}
\underline{Underlined text}
```

## Advanced Tips

### Using Copilot Chat for Targeted Improvements

1. **Context-aware questions:**
   - Select a section → Right-click → "Copilot: Explain This"
   - Select text → Copilot Chat → Ask specific questions

2. **Iterative refinement:**
   - Ask Copilot to improve something
   - Review the suggestion
   - Ask for alternative versions
   - Choose the best option

3. **Job-specific tailoring:**
   ```
   "Tailor this CV for a Senior Software Engineer position at a startup"
   
   "What skills should I emphasize for a DevOps role?"
   
   "Review my CV against this job description: [paste JD]"
   ```

### Maintaining Multiple CV Versions

Create variations for different roles:

```bash
cv.tex              # Main CV
cv_software.tex     # Software engineering focus
cv_data.tex         # Data science focus
cv_academic.tex     # Academic/research focus
```

Copy and modify the main template for each version.

### Cleaning Up Build Files

Manual cleanup:
- Command Palette → "LaTeX Workshop: Clean up auxiliary files"

Automatic cleanup:
- Enabled by default in `.vscode/settings.json`
- Cleans after each successful build

## Export and Share

### Final PDF Export

Your PDF is ready at: `cv.pdf`

**For job applications:**
1. Review the PDF one final time
2. Check that all links work (LinkedIn, GitHub, email)
3. Verify the file size is reasonable (< 1MB)
4. Test opening in different PDF viewers

**Rename for applications:**
```bash
cp cv.pdf "FirstName_LastName_CV.pdf"
```

### ATS Compatibility Check

Your CV is already ATS-friendly, but double-check:
- ✓ Standard fonts (no exotic typefaces)
- ✓ No tables or text boxes
- ✓ No images or graphics
- ✓ Clear section headings
- ✓ Standard format (PDF)

## Quick Reference

### Keyboard Shortcuts

| Action | Windows/Linux | macOS |
|--------|---------------|-------|
| Save & Build | Ctrl+S | Cmd+S |
| Command Palette | Ctrl+Shift+P | Cmd+Shift+P |
| Copilot Chat | Ctrl+Alt+I | Cmd+Alt+I |
| Accept Suggestion | Tab | Tab |
| Problems Panel | Ctrl+Shift+M | Cmd+Shift+M |

### Common Copilot Prompts

- "Make this more professional"
- "Add quantifiable results"
- "Is this ATS-friendly?"
- "Suggest action verbs"
- "Improve this bullet point"
- "Check for grammar errors"

### LaTeX Quick Syntax

```latex
% Comments start with %

\textbf{Bold}
\textit{Italic}
\underline{Underline}

\href{URL}{Link text}

\resumeItem{Bullet point}

\vspace{5pt}  % Vertical space
```

## Troubleshooting

**Copilot not suggesting:**
- Make sure Copilot is active (check status bar)
- Try explicit prompts in Copilot Chat
- Verify Copilot subscription

**PDF not updating:**
- Check for LaTeX errors in Problems panel
- Clean auxiliary files and rebuild
- Check file permissions

**Formatting issues:**
- Review LaTeX syntax
- Check for unescaped special characters
- Ensure all environments are closed

## Next Steps

Once your CV is complete:
1. Get feedback from peers or mentors
2. Test with online ATS checkers
3. Customize for specific job applications
4. Keep cv_draft.txt updated as you gain experience
5. Rebuild regularly to keep your CV current

## Resources

- **LaTeX Help**: https://www.overleaf.com/learn
- **CV Writing Tips**: https://www.indeed.com/career-advice/resumes-cover-letters
- **GitHub Copilot Tips**: https://docs.github.com/en/copilot
- **ATS Optimization**: Search for "ATS-friendly resume tips"
