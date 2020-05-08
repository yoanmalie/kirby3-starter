#!/bin/bash
set -e

# Colors
INFO="\033[0;36m" # Cyan
ERROR="\033[0;31m" # Red
OK="\033[0;32m" # Green
NC="\033[0m" # No color

# Content folder
contentFolder="./content"

function populateContent() {
  name=$1
  title="${2:-$1}"
  titleUC=$(echo "${title:0:1}" | tr "[:lower:]" "[:upper:]")${title:1}
  file="${contentFolder}/${name}/${name}.txt"

  # Specific case where to create a subfolder or not
  if [[ ${name} = "site" ]]; then
    file="${contentFolder}/${name}.txt"
  else
    mkdir -p ${contentFolder}/${name}
  fi

  # File content
  echo "Title: ${titleUC}" > ${file}
  printf "${OK}${name}:${NC} The content was created!\n"
}

# Check and populate
if [[ -d ${contentFolder} && "$(ls -A ${contentFolder})" ]]; then
  printf "${ERROR}Error:${NC} The content folder is already filled.\n"
else
  # Create content files
  printf "${INFO}Populate with basic content…\n${NC}"
  populateContent "home"
  populateContent "error"
  populateContent "site" "Site Title"
fi
