#!/bin/bash
set -euo pipefail

grep -E '^User-agent: ..+' robots.txt | sed 's/^User-agent: //' | sort -u | sed -e 's@ @\\s@g' -e 's@^@        ~*@' -e 's@$@ 2;@'
