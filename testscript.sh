#!/bin/bash

# SCHMD -> HTML5
pandoc-dev -f markdown_scholarly --parse-raw -t html5 --smart --mathjax --template=schmdTemplate.html5 schmd.md >schmd.html

# SCHMD -> LATEX
pandoc-dev -f markdown_scholarly --parse-raw -t latex --smart --template=schmdTemplate.latex schmd.md >schmd.tex

# SCHMD -> NATIVE
pandoc-dev -f markdown_scholarly --parse-raw -t native --smart schmd.md >schmd.native

# SCHMD -> PDF
pandoc-dev -f markdown_scholarly --parse-raw --template=schmdTemplate.latex --smart schmd.md -o schmd.pdf
