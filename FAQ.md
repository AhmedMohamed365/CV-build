# Frequently Asked Questions (FAQ)

## General Questions

### Q: Why use LaTeX for a CV instead of Word or Google Docs?

**A:** LaTeX offers several advantages:
- **Professional Typography**: Superior formatting and consistent appearance
- **Version Control**: Plain text files work perfectly with Git
- **ATS-Friendly**: Clean structure that automated systems can parse
- **Customizable**: Fine-grained control over every aspect
- **Free and Open Source**: No licensing costs
- **Future-Proof**: Plain text format will always be accessible

### Q: Do I need to learn LaTeX to use this?

**A:** No! The template is ready to use. You just need to:
1. Fill in `cv_draft.txt` with your information
2. Copy content to the appropriate sections in `cv.tex`
3. Save the file to build the PDF

Basic editing requires no LaTeX knowledge. The template handles all formatting.

### Q: What is ATS and why does it matter?

**A:** ATS (Applicant Tracking System) is software that companies use to screen CVs automatically. An ATS-friendly CV:
- Uses standard section headings (Education, Experience, Skills)
- Avoids complex tables, text boxes, and images
- Uses standard fonts
- Includes relevant keywords
- Has clear structure

This template is designed to pass ATS screening.

## Installation & Setup

### Q: How long does TeX Live installation take?

**A:** 
- **Basic install**: 5-10 minutes
- **Full install**: 30-60 minutes (recommended)
- **Bandwidth**: Full install is ~7GB

Tip: Install overnight or during a long break.

### Q: Can I use this without installing TeX Live locally?

**A:** Yes! Alternative options:
1. **Overleaf**: Upload files to https://overleaf.com (online LaTeX editor)
2. **GitHub Actions**: Included workflow builds PDF automatically on push
3. **Docker**: Run LaTeX in a container (advanced users)

### Q: I'm on Windows and installation failed. What now?

**A:** Common fixes:
1. Run installer as Administrator
2. Disable antivirus temporarily during installation
3. Ensure you have 10GB+ free disk space
4. Use MiKTeX as alternative: https://miktex.org/

### Q: Do I need VS Code or can I use another editor?

**A:** You can use any text editor:
- **VS Code**: Recommended (best LaTeX Workshop integration)
- **Overleaf**: Web-based, no installation needed
- **TeXstudio**: Dedicated LaTeX editor
- **Sublime Text / Atom**: With LaTeX plugins
- **Vim / Emacs**: For advanced users

However, GitHub Copilot works best in VS Code.

## GitHub Copilot

### Q: Do I need a GitHub Copilot subscription?

**A:** Copilot is **optional** but highly recommended. The system works without it, but you'll miss:
- AI-powered content suggestions
- Professional phrasing improvements
- Grammar and style checking
- ATS optimization tips

**Cost**: 
- Free for students and open-source maintainers
- $10/month for individuals
- Included with GitHub Enterprise

### Q: Can I use ChatGPT or other AI instead of Copilot?

**A:** Yes! You can:
1. Copy sections from `cv_draft.txt`
2. Paste into ChatGPT/Claude/other AI
3. Ask for improvements
4. Copy results back

However, Copilot's integration with VS Code makes the workflow smoother.

### Q: Copilot is not showing suggestions. Help!

**A:** Troubleshooting steps:
1. Check Copilot status (bottom-right in VS Code)
2. Sign in: Command Palette → "GitHub Copilot: Sign In"
3. Verify subscription at https://github.com/settings/copilot
4. Reload VS Code: Command Palette → "Developer: Reload Window"
5. Check if Copilot is enabled for current file type in settings

## Using the Template

### Q: How do I add/remove sections?

**A:** In `cv.tex`, sections are clearly marked:
```latex
%-----------SECTION NAME-----------
\section{Section Name}
...content...
```

To remove: Delete or comment out (add `%` at start of each line)
To add: Copy an existing section and modify it

### Q: Can I change the design/colors?

**A:** Yes! Common customizations:

**Change colors:**
```latex
\usepackage{xcolor}
\definecolor{mycolor}{RGB}{0,102,204}
```

**Change font:**
```latex
% Replace \usepackage[sfdefault]{roboto} with:
\usepackage{times}  % Times New Roman
\usepackage{helvet} % Helvetica
```

**Adjust spacing:**
```latex
\addtolength{\topmargin}{-.2in}  % Reduce top margin
```

### Q: How do I add a photo to my CV?

**A:** Adding photos is generally **not recommended** for US/UK markets (ATS compatibility and bias concerns). But if needed:

```latex
% Add to preamble:
\usepackage{graphicx}

% In header section:
\begin{minipage}{0.3\textwidth}
\includegraphics[width=\linewidth]{photo.jpg}
\end{minipage}
```

Note: This may reduce ATS compatibility.

### Q: Can I make this a multi-page CV?

**A:** Yes! The template automatically handles multiple pages. Just keep adding content. For academic CVs (longer format):

```latex
% Change document class:
\documentclass[letterpaper,11pt]{article}
% to:
\documentclass[letterpaper,10pt]{article}  % Smaller font for more content
```

### Q: How do I change from Letter to A4 paper?

**A:** Change the first line:
```latex
% From:
\documentclass[letterpaper,11pt]{article}
% To:
\documentclass[a4paper,11pt]{article}
```

## Building & Previewing

### Q: The PDF isn't updating when I save.

**A:** Troubleshooting:
1. Check for LaTeX errors (Problems panel: Ctrl+Shift+M)
2. View LaTeX Workshop output: View → Output → "LaTeX Workshop"
3. Clean and rebuild: Command Palette → "LaTeX Workshop: Clean up auxiliary files" → Save again
4. Restart VS Code

### Q: I get errors about missing packages.

**A:** Install missing packages:
```bash
# Linux/macOS
sudo tlmgr install <package-name>

# Windows (MiKTeX)
# Packages install automatically on first use
# Or use MiKTeX Console → Packages
```

Common missing packages: `fontawesome5`, `roboto`, `enumitem`

### Q: Build is very slow.

**A:** Speed up builds:
1. Use only `pdflatex` (not full build with bibtex)
2. Close PDF preview when not needed
3. Build on save is convenient but can be disabled:
   ```json
   "latex-workshop.latex.autoBuild.run": "never"
   ```
4. Build manually: Command Palette → "LaTeX Workshop: Build LaTeX project"

### Q: Can I build from command line instead of VS Code?

**A:** Yes! Use the included Makefile:
```bash
make build      # Build PDF
make clean      # Clean auxiliary files
make view       # Open PDF
make help       # Show all commands
```

Or directly:
```bash
pdflatex cv.tex
```

## Content & Writing

### Q: Should I include my GPA?

**A:** Include if:
- You're a recent graduate (< 2 years)
- GPA is 3.5+ (out of 4.0)
- Job posting specifically requests it

Otherwise, omit it.

### Q: How long should my CV be?

**A:** 
- **Entry-level** (0-5 years): 1 page
- **Mid-level** (5-10 years): 1-2 pages
- **Senior-level** (10+ years): 2 pages
- **Academic/Research**: 2+ pages acceptable

Quality over quantity. Every line should add value.

### Q: What if I don't have much experience?

**A:** Focus on:
- Academic projects and coursework
- Personal projects and GitHub repositories
- Internships and volunteer work
- Relevant skills and certifications
- Contributions to open source

Use the projects section extensively.

### Q: How do I handle employment gaps?

**A:** Options:
1. Use years only (not months): "2020 - 2022" instead of "Jan 2020 - Dec 2022"
2. Include relevant activities: freelancing, learning, personal projects
3. Be honest if asked, but CV doesn't need to explain everything
4. Focus on what you learned/accomplished during gaps

### Q: Should I include references?

**A:** Generally no. "References available upon request" is outdated. Use the space for relevant content instead.

## Customization

### Q: How do I create multiple versions for different jobs?

**A:** Option 1 - Multiple files:
```
cv_software.tex
cv_data.tex
cv_devops.tex
```

Option 2 - Git branches:
```bash
git checkout -b cv-software
git checkout -b cv-data
```

Option 3 - Conditional content (advanced):
```latex
\newif\ifsoftware
\softwaretrue  % or \softwarefalse

\ifsoftware
  % Software-specific content
\fi
```

### Q: Can I use this template for a resume vs CV?

**A:** Yes! The terms are often used interchangeably:
- **US**: "Resume" (1-2 pages, job-focused) vs "CV" (academic, comprehensive)
- **UK/EU**: "CV" for both types

This template works for both. Adjust length and content based on target:
- Resume: 1 page, job-relevant only
- CV: 2+ pages, comprehensive history

### Q: How do I add a portfolio/website link?

**A:** In the header section:
```latex
\href{https://yourwebsite.com}{\faIcon{globe} \underline{yourwebsite.com}}
```

Or add a Portfolio section:
```latex
\section{Portfolio}
\begin{itemize}[leftmargin=0.15in, label={}]
    \small{\item{
        \textbf{Website}: \href{https://yoursite.com}{yoursite.com} \\
        \textbf{GitHub}: \href{https://github.com/yourusername}{github.com/yourusername}
    }}
\end{itemize}
```

## Troubleshooting

### Q: Special characters aren't displaying correctly.

**A:** Escape special LaTeX characters:
```latex
\&  for &
\%  for %
\$  for $
\_  for _
\#  for #
```

For other special characters:
```latex
\usepackage[utf8]{inputenc}  % Already included
```

### Q: I get "Undefined control sequence" errors.

**A:** This usually means:
1. Typo in a LaTeX command: `\textbf` not `\textbold`
2. Missing package: add `\usepackage{...}` in preamble
3. Unclosed brace: every `{` needs a matching `}`

Check the .log file for the specific line number.

### Q: The formatting looks weird in the PDF.

**A:** Common issues:
1. **Extra spaces**: Use `%` at line ends in LaTeX to prevent unwanted spaces
2. **Alignment issues**: Check tabular environments have correct column specs
3. **Overlapping text**: Adjust `\vspace` values
4. **Font issues**: Ensure required fonts are installed

### Q: How do I export to Word format?

**A:** LaTeX to Word conversion is problematic. Better options:
1. Keep PDF as primary format (most professional)
2. Use Pandoc for basic conversion (loses formatting):
   ```bash
   pandoc cv.tex -o cv.docx
   ```
3. Manually recreate in Word if absolutely required
4. Most employers accept PDF (often prefer it)

## Version Control & Collaboration

### Q: Should I commit the PDF to Git?

**A:** Two schools of thought:
- **No (recommended)**: Add `*.pdf` to `.gitignore`, build locally or via CI
- **Yes**: Convenient for quick sharing, but increases repo size

The included `.gitignore` excludes PDF by default. Remove that line to commit PDFs.

### Q: How do I share my CV for review?

**A:** Options:
1. **PDF**: Most common, universally readable
2. **Overleaf link**: Share LaTeX source for collaboration
3. **GitHub repo**: Share the repository URL
4. **Print**: For in-person reviews

### Q: Can others help me edit even if they don't know LaTeX?

**A:** Yes:
1. They edit `cv_draft.txt` (plain text)
2. You transfer changes to `cv.tex`
3. Or use Overleaf for real-time collaboration

## Advanced Usage

### Q: How do I add a bibliography/publications section?

**A:** Use BibTeX:

1. Create `publications.bib`:
```bibtex
@article{yourname2023,
    title={Your Paper Title},
    author={Your Name and Coauthor},
    journal={Journal Name},
    year={2023}
}
```

2. In `cv.tex`:
```latex
\section{Publications}
\nocite{*}
\bibliographystyle{plain}
\bibliography{publications}
```

3. Build with: `make build-full`

### Q: How do I customize the section formatting?

**A:** Modify the `\titleformat` command:
```latex
\titleformat{\section}{
  \vspace{-4pt}\scshape\raggedright\large\bfseries  % Modify these
}{}{0em}{}[\color{black}\titlerule \vspace{-5pt}]
```

### Q: Can I use this with Overleaf?

**A:** Absolutely:
1. Create new Overleaf project
2. Upload `cv.tex` and any images
3. Compile (should work immediately)
4. Download PDF when done

Overleaf includes all packages, so no installation needed.

### Q: How do I set up automatic builds with GitHub Actions?

**A:** Already included! The `.github/workflows/build-cv.yml` file:
- Builds PDF automatically when you push changes to `cv.tex`
- Uploads PDF as downloadable artifact
- Runs on every commit to main/master branch

Enable by pushing the workflow file to your repository.

## Getting Help

### Q: Where can I learn more about LaTeX?

**A:** Resources:
- Overleaf Documentation: https://www.overleaf.com/learn
- LaTeX Wikibook: https://en.wikibooks.org/wiki/LaTeX
- TeX Stack Exchange: https://tex.stackexchange.com/
- r/LaTeX: https://reddit.com/r/LaTeX

### Q: My question isn't answered here. What now?

**A:** 
1. Check the LaTeX Workshop output in VS Code for error details
2. Search TeX Stack Exchange for similar issues
3. Review the LaTeX log file (`.log`)
4. Ask GitHub Copilot Chat for help with specific errors
5. Post on relevant forums with minimal reproducible example

### Q: How do I contribute improvements to this template?

**A:** If this is your fork:
1. Make changes to the template
2. Test thoroughly
3. Update documentation
4. Commit and push

If you want to share with others, consider creating a public repository or gist.

## Best Practices

### Q: How often should I update my CV?

**A:** 
- **After major achievements**: New job, certification, project completion
- **Before job hunting**: Review and refresh every 3-6 months
- **Regular maintenance**: Quick updates monthly (new skills, projects)

Keep `cv_draft.txt` updated continuously so rebuilding is quick.

### Q: Should I have different CVs for different applications?

**A:** Yes! Tailor each CV:
1. Keep a "master" CV with everything
2. Create versions emphasizing different skills
3. Customize summary for each application
4. Adjust skill ordering for relevance
5. Highlight most relevant projects/experience

### Q: Any tips for making my CV stand out?

**A:** 
- **Quantify everything**: Numbers, percentages, scales
- **Action verbs**: Developed, implemented, led, optimized
- **Results-focused**: Not just what you did, but impact
- **Keywords**: Match job description terminology
- **Clean formatting**: Professional, consistent, readable
- **Proofread**: Zero typos or errors
- **Relevant only**: Every line should serve a purpose

---

**Still have questions?** 
- Check [SETUP.md](SETUP.md) for installation help
- See [USAGE.md](USAGE.md) for workflow guidance  
- Review [COPILOT_PROMPTS.md](COPILOT_PROMPTS.md) for AI assistance tips
