# upnup
upnup is a command line utility that generates a LICENSE file in the current
working directory. It also is able to generate license headers for applicable
files.

upnup is a bash version of [Safia Abdalla's legit](https://github.com/captainsafia/legit).

### Installation/Uninstallation

clone this repository and navigate into it:

`git clone https://codeberg.org/z3rOR0ne/upnup`

`cd upnup`

this repository includes install/uninstall scripts for your convenience.

By default, the script and data files are installed systemwide in `/usr/local` (requires root privilege).

If you want to install to your home directory, use `./install --user` (no root required).

To customize the installation, you can set the `PREFIX` directory, or further customize with the `BINDIR`, `DATADIR`, and `MANDIR` variables. Run `./install --help` for details.

You can preview the actions the install script will take by giving the `--dry-run` switch.

And if you wish to uninstall:

`./uninstall`

Note: if you used the `--user` switch and/or defined `PREFIX` (etc.), you will also need to give those to `uninstall`.

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
See man page for details:
 man upnup
```
[![asciicast](https://asciinema.org/a/b4OuDj0sI8ivAnf16ZneQ7mqf.svg)](https://asciinema.org/a/b4OuDj0sI8ivAnf16ZneQ7mqf)

### Which license should I use?

Please see the disclaimer below regarding the whole "this is not legal advice"
spiel. After running the install script, you can find the default licenses in:

`$HOME/.config/upnup/licenses`

Additionally I've included brief synopses of each of the licenses in the man
pages (credit: [choosealicense](https://choosealicense.com)):

`man upnup`

### Why did you make this when legit already exists?

legit was the inspiration for this project, so of course i have great respect for Safia Abdalla!
legit is a simple small program written in JavaScript and I have utilized it in my projects often.
 I'm currently learning bash scripting as I try and utilize it to automate more and more of my workflow. Additionally, legit requires node and npm to be installed, while bash is installed by default in pretty much all UNIX-like operating systems (MacOs, Linux, BSDs). While there are some minor differences in invocation, upnup is more or less a drop in replacement for legit.

### Safia's Inspiring Projects:

- [legit](https://github.com/captainsafia/legit)
- [commentator](https://github.com/captainsafia/commentator)

### Disclaimer

I am not a lawyer and none of this or any documents within this
repository are to be construed as legal advice. All content herein is for
informational purposes only.
