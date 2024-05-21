#!/bin/bash/

Banner () {
    python3 -c "import pyfiglet;text = pyfiglet.figlet_format('Temp-nucli');print(text)"

}
Banner
generate_temp() {
    read -p 'Please enter ID: ' id
    read -p 'Enter name: ' name
    read -p 'Enter author: ' author
    read -p 'Enter severity: ' severity
    read -p 'Enter description: ' description
    read -p 'Enter reference: ' reference
    read -p 'Enter request method: ' request
    read -p 'Enter request path: ' path
    read -p 'Enter type of matchers: ' matchers
    read -p 'Enter matchers condition: ' condition

    if [[ -z $id || -z $name || -z $author || -z $severity || -z $request || -z $path || -z $matchers || -z $condition ]]; then 
        echo "All fields are required and cannot be empty."
        return 1
    else 
        output_file="${name}.yaml"
        if [[ -e ~/${output_file} ]]; then
            echo "File already exists: ${output_file}"
        else
            echo "
id: ${id}
info:
  name: ${name}
  author: ${author}
  severity: ${severity}
  description: ${description}
  reference: ${reference}
requests:
  - method: ${request}
    path:
      - '{{BaseURL}}/${path}' 
matchers-condition: ${condition}
matchers:
  - type: ${matchers}
    words:
      - 
      - 
      - 
      - 
      -" > ~/${output_file}
            echo "File created: ${output_file}"
        fi
    fi
}
generate_temp
