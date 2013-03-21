# grep Puppet Module for Boxen

## Usage

```puppet
include grep
```

## Required Puppet Modules

* boxen
* homebrew

## Why?  Isn't grep installed with OS X?

You're right.  `grep` is installed with OS X.  But, GNU grep provides `--initial-tab` and that's nice.

### Without `-T`

    aa-dev:puppet-grep aashbacher$ grep -rn --exclude-dir=.git 'grep' .
    ./manifests/init.pp:1:# Public: Install grep from homebrew.
    ./manifests/init.pp:5:#   include grep
    ./manifests/init.pp:6:class grep {
    ./manifests/init.pp:7:  package { 'grep': }
    ./README.md:1:# grep Puppet Module for Boxen
    ./README.md:6:include grep
    ./README.md:9:## Why?  Isn't grep installed with OS X?
    ./README.md:11:You're right.  `grep` is installed with OS X.  But, GNU grep provides `--initial-tab` and that's nice.

### With `-T`

Isn't this better?  Especially when tons of files are matched _and_ when `--color=auto` is added.  Mmmm, so pretty.

    aa-dev:puppet-grep aashbacher$ grep -rnT --exclude-dir=.git 'grep' .
    ./manifests/init.pp:   1       :# Public: Install grep from homebrew.
    ./manifests/init.pp:   5       :#   include grep
    ./manifests/init.pp:   6       :class grep {
    ./manifests/init.pp:   7       :  package { 'grep': }
    ./README.md:   1       :# grep Puppet Module for Boxen
    ./README.md:   6       :include grep
    ./README.md:   9       :## Why?  Isn't grep installed with OS X?
    ./README.md:  11       :You're right.  `grep` is installed with OS X.  But, GNU grep provides `--initial-tab` and that's nice.
