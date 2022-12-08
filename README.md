# upnup
upnup is a bash version of [Safia Abdalla's legit](https://github.com/captainsafia/legit)
### Usage
```
Usage: upnup [options] [command]
Options:
 -V, --version              output the version number
 -h, --help                 output usage information"
 -u, --user [user]          The user/organization who holds the license
 -y, --year [year]          The year the license is in effect
 -f, --file <file>          The file to add a header to
Commands:
 list|l                     List all available licenses
 put|p [options] <license>  Put a license in this directory
Notes:
 if used, -f flag must always come before p command
 call upnup from root of project when using -f flag
 projectname in headers defaults to current directory name
Examples:
 upnup p mit
 upnup -u "john doe" -y 2021 p bsd-3-clause
 upnup -f agpl-3.0 p src/test.js
 upnup -u "john doe" -y 2021 -f cc0-1.0 p src/main/file.py
```
##### Checklist
- [x] Get the above options working
- [x] Comments for headers will be somewhat difficult, see [Safia's
commentator](https://github.com/captainsafia/commentator)
- [x] Create a man page of upnup
- [x] In Man or Help Page create Permissions/Conditions/Limitations summary like
on [choosealicense](https://choosealicense.com/licenses/)
- [ ] Comment your code for future you
- [ ] Update README.md with explanations (take a cue from bgit), add asciiden, etc.
