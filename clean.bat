@echo off
cd /d "%~dp0"
del /s /q *.aux *.log *.out *.thm *.toc *.bbl *.blg *.fdb_latexmk *.fls *.gz *.lof *.lot *.xdv *.synctex.gz *.nav *.snm *.vrb
echo Cleanup complete.
