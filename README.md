# useradd

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What useradd affects](#what-useradd-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with useradd](#beginning-with-useradd)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)
    * [TODO](#todo)
    * [Contributing](#contributing)

## Overview

Manages **useradd** template file

## Module Description

Manages default vaules for **useradd**

## Setup

### What useradd affects

* package containing **/etc/default/useradd**
* **/etc/default/useradd** itself

### Setup Requirements

This module requires pluginsync enabled

### Beginning with useradd

Defaults are safe enough:

```puppet
class { 'useradd': }
```

## Usage

Nothing fancy here.

## Reference

### useradd

* **group**: The group name or ID for a new user's initial group (when the **-N/--no-user-group** is used or when the **USERGROUPS_ENAB** variable is set to **no** in **/etc/login.defs**). The named group must exist, and a numerical group **ID** must have an existing entry (default: 100)
* **home**: The default base directory for the system if no homedir (-d) is specified. **home** is concatenated with the account name to define the home directory. (default: /home)
* **inactive**:  The number of days after a password expires until the account is permanently disabled. A value of 0 disables the account as soon as the password has expired, and a value of -1 disables the feature (default: -1)
* **expire**: The date on which the user account will be disabled. The date is specified in the format YYYY-MM-DD (default: undef)
* **shell**: The name of the user's login shell (default: /sbin/nologin)
* **skel**:  The skeleton directory, which contains files and directories to be copied in the user's home directory, when the home directory is created by useradd. (default: /etc/skel)

## Limitations

Tested on:
* CentOS 5
* CentOS 6
* CentOS 7
* Ubuntu 14.04
* SLES 11 SP3

## Development

We are pushing to have acceptance testing in place, so any new feature should
have some test to check both presence and absence of any feature

### TODO

* **/etc/login.defs** support

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
