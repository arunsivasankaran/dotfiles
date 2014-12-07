# Arun's dotfiles

![Screenshot of my shell prompt](https://www.dropbox.com/s/lok9wuxnbklnuex/Screenshot%202014-08-11%2001.45.19.png?raw=true)

## Installation & Usage

### Using Git.

You can clone the repository. I keep mine in `~/dev/dotfiles`. The bootstrap.sh script will pull in the latest version.

```bash
git clone https://github.com/arunsivasankaran/dotfiles.git
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
sh bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/mathiasbynens/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh,LICENSE-MIT.txt}
```

To update later on, just run that command again.

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
sh defaults.sh
```

### System Setup

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course):

```bash
sh setup.sh
```

### Install Common Apps

Install commonly used apps

```bash
sh install.sh
```

## Feedback
[Ideas & suggestions welcome](https://github.com/arunsivasankaran/dotfiles/issues)

## Author

| [![twitter/arun](http://www.gravatar.com/avatar/2afc947e347300149db79567d5012964.png)](http://twitter.com/aparthi "Follow @aparthi on Twitter") |
|---|
| [Arun Sivasankaran](https://nerdsnipe.io/) |

## Thanks to…

* [Mathias Bynens](http://mathiasbynens.be/) ** [GitHub Link](https://github.com/mathiasbynens/dotfiles)
* @ptb and [his _OS X Lion Setup_ repository](https://github.com/ptb/Mac-OS-X-Lion-Setup)
* [Ben Alman](http://benalman.com/) and his [dotfiles repository](https://github.com/cowboy/dotfiles)
* [Chris Gerke](http://www.randomsquared.com/) and his [tutorial on creating an OS X SOE master image](http://chris-gerke.blogspot.com/2012/04/mac-osx-soe-master-image-day-7.html) + [_Insta_ repository](https://github.com/cgerke/Insta)
* [Cãtãlin Mariş](https://github.com/alrra) and his [dotfiles repository](https://github.com/alrra/dotfiles)
* [Gianni Chiappetta](http://gf3.ca/) for sharing his [amazing collection of dotfiles](https://github.com/gf3/dotfiles)
* [Jan Moesen](http://jan.moesen.nu/) and his [ancient `.bash_profile`](https://gist.github.com/1156154) + [shiny _tilde_ repository](https://github.com/janmoesen/tilde)
* [Lauri ‘Lri’ Ranta](http://lri.me/) for sharing [loads of hidden preferences](http://osxnotes.net/defaults.html)
* [Matijs Brinkhuis](http://hotfusion.nl/) and his [dotfiles repository](https://github.com/matijs/dotfiles)
* [Nicolas Gallagher](http://nicolasgallagher.com/) and his [dotfiles repository](https://github.com/necolas/dotfiles)
* [Sindre Sorhus](http://sindresorhus.com/)
* [Tom Ryder](http://blog.sanctum.geek.nz/) and his [dotfiles repository](https://github.com/tejr/dotfiles)
* [Kevin Suttle](http://kevinsuttle.com/) and his [dotfiles repository](https://github.com/kevinSuttle/dotfiles) and [OSXDefaults project](https://github.com/kevinSuttle/OSXDefaults), which aims to provide better documentation for [`~/.osx`](https://mths.be/osx)
* [Haralan Dobrev](http://hkdobrev.com/)
* anyone who [contributed a patch](https://github.com/mathiasbynens/dotfiles/contributors) or [made a helpful suggestion](https://github.com/mathiasbynens/dotfiles/issues)
