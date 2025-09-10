# Log Analyzer

A Bash script from Day 10 of working on my QA learning journey.  
It allows you to search a log file for specific levels (`INFO`, `WARN`, or `ERROR`) and outputs a count, plus the matching lines.

## Features
- Prompts user to enter a log level
- Validates input (stops if nothing is entered)
- Uses `grep` to filter log entries into `results.txt`
- Counts matches with `wc -l`
- Prints a friendly message if no results are found
- Loops through results and numbers each line for readability

## Example
```bash
$ ./log-analyzer.sh
Enter a log level to search (INFO, WARN, ERROR): ERROR
3 ERROR lines saved to results.txt
1: ERROR - Failed to connect to database
2: ERROR - Timeout during API call
3: ERROR - Invalid user input
```

## What I Practiced
- `grep` for searching
- `wc` for counting lines
- User input with `read`
- Basic validation (`if` and `-z`)
- Loops in Bash (`while read`)
- File redirection (`>`)

### Reflection
Just tying everything I had learned over my first 10 days with shell scripts and bash commands: navigation, text commands, conditionals, loops, and executing script. On to the next adventure!
