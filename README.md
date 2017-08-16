# useradd - DEPRECATED -



## Overview

Manages **useradd** template file

## Module Description

Manages default vaules for **useradd**

## Setup

### What useradd affects



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
