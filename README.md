## Advanced Linux

The planned topics include:
1. Reminder on the structure of a command line: command name, parameters (short and long format) and arguments
6. Refresher on grep. Simple examples
7. Bash utilities like diff, cut, join
2. Variables and variable expansion with the $ sign. The effect of single- or double-quoting
5. Shell scripts
5. Tests and control structures. Things like `if \[ $a -ne 0 ]`, loops (for and while)
3. String manipulation in Bash, with constructs like "${var:2:5}" or "${var%.tar} (see https://www.tldp.org/LDP/abs/html/string-manipulation.html)
4. Arithmetic calculations in Bash, with "expr" or constructs like "$(( var + 1 ))""
8. Simple file processing with sed.
9. awk.

### Regular expressions
See [this](https://www.rexegg.com/regex-quickstart.html) detailed regular expression cheat sheat. 

## sed

        `sed [-e] 'instruction' file`
The command line options are:
        -e Editing instruction follows.
        -f Filename of the script follows.
        -n Suppress automatic output of input lines.
You can pass multiple sed commands by preceding each with `-e` or a semicolon (`;`)
    
    ` sed -e 's/old/new/' -e ’s/old1/new2/' file`
    
You can also pass commands to `sed` in a file using `-f`.
    
    `sed -f sedcscript -e `
    
For further resources on sed, see: [Provide a good link]

## awk
Named after the three developers. 

`awk 'instructions’ files`

For example, in this example where sed works like `cut`,

`awk '{ print $1 }' file`, The instruction is to print the first field in the file. By default, the fields are delimited by space. Where another character delimits the fields, `-F` is used to specify the delimiter. 

 `awk -F, '{ print $1 }' file` (a comma in this example)


You can also print each field in its line by separating the print statements with a semicolon. 

 `awk -F, '{ print $1; print $2; print $3 }' file`