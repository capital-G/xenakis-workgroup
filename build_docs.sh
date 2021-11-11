#!/bin/bash

rm -rf _build

pip install --quiet -r requirements.txt

jupyter-book build .

if [[ -z "${OPEN_BROWSER_AFTER_TEST}" ]]; then
  echo "Set OPEN_BROWSER_AFTER_TEST to open webbrowser w/ documentation after build"
else
  python -c "import os, webbrowser; webbrowser.open(f'file://{os.getcwd()}/_build/html/index.html')"
fi
