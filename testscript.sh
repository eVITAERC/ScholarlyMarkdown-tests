#!/bin/bash

# SCHMD -> HTML5
pandoc-dev -f markdown_scholarly --parse-raw -t html5 --smart --mathjax --template=schmdTemplate.html5 schmd.md >schmd.html

# SCHMD -> LATEX
pandoc-dev -f markdown_scholarly --parse-raw -t latex --smart --mathjax --template=schmdTemplate.latex schmd.md >schmd.tex
