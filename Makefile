# Makefile for CV-build project
# This provides command-line build options as an alternative to VS Code LaTeX Workshop

# Variables
MAIN_TEX = cv.tex
MAIN_PDF = cv.pdf
LATEX = pdflatex
LATEX_FLAGS = -interaction=nonstopmode -file-line-error

# Build targets
.PHONY: all build clean help view

# Default target
all: build

# Build the CV PDF
build: $(MAIN_TEX)
	@echo "Building CV..."
	$(LATEX) $(LATEX_FLAGS) $(MAIN_TEX)
	@echo "Build complete: $(MAIN_PDF)"

# Build with bibliography support (if you add references later)
build-full: $(MAIN_TEX)
	@echo "Building CV with full compilation..."
	$(LATEX) $(LATEX_FLAGS) $(MAIN_TEX)
	bibtex $(basename $(MAIN_TEX))
	$(LATEX) $(LATEX_FLAGS) $(MAIN_TEX)
	$(LATEX) $(LATEX_FLAGS) $(MAIN_TEX)
	@echo "Full build complete: $(MAIN_PDF)"

# Clean auxiliary files
clean:
	@echo "Cleaning auxiliary files..."
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.fls *.fdb_latexmk *.synctex.gz
	@echo "Clean complete"

# Clean everything including PDF
clean-all: clean
	@echo "Removing PDF..."
	rm -f $(MAIN_PDF)
	@echo "All clean"

# View the PDF (Linux/macOS)
view: $(MAIN_PDF)
	@if command -v xdg-open > /dev/null; then \
		xdg-open $(MAIN_PDF); \
	elif command -v open > /dev/null; then \
		open $(MAIN_PDF); \
	else \
		echo "Could not find a PDF viewer. Please open $(MAIN_PDF) manually."; \
	fi

# Check if pdflatex is installed
check:
	@echo "Checking LaTeX installation..."
	@which $(LATEX) > /dev/null && echo "✓ pdflatex found" || echo "✗ pdflatex not found - please install TeX Live"
	@which bibtex > /dev/null && echo "✓ bibtex found" || echo "✗ bibtex not found"

# Help message
help:
	@echo "CV-build Makefile targets:"
	@echo "  make build      - Build the CV PDF (default)"
	@echo "  make build-full - Build with bibliography support"
	@echo "  make clean      - Remove auxiliary LaTeX files"
	@echo "  make clean-all  - Remove all generated files including PDF"
	@echo "  make view       - Open the PDF (Linux/macOS)"
	@echo "  make check      - Check if LaTeX is installed"
	@echo "  make help       - Show this help message"
