# bioruby-gff3-pltools

[![Build Status](https://secure.travis-ci.org/mamarjan/bioruby-gff3-pltools.png)](http://travis-ci.org/mamarjan/bioruby-gff3-pltools)

Note: this software is under active development!

This is currently an early work in progress to create a wrapper
library for gff3-pltools.

## Installation

### Requirements

gff3-pltools have to be installed and in the PATH. Ruby is a requirement
too, and the rest can be installed using bundler.

### Build and install instructions

Given the gff3-tools are installed, the gem command can be used to
install the latest gem from rubygems.org:

```sh
    gem install bio-gff3-pltools
```

To build and install the library from source, use the following steps:

```sh
    tar -zxvf bioruby-gff3-pltools-X.Y.Z.tar.gz
    cd bioruby-gff3-pltools-X.Y.Z
    bundle install
    rake install
```

To build a gem without installing, use the rake task "build" instead
of "install" in the previous example.

### Run tests

To run cucumber tests, first make sure the  D utilities
are available in the path and then start the "features" rake task,
like this:

```sh
    rake features
```

## Usage

To use the library in your code, after installing the gem, simply
require the library:

```ruby
    require 'bio-gff3-pltools'
```

The API docs are online:

  http://mamarjan.github.com/gff3-pltools/docs/0.3.0/ruby-api/ 

For more code examples see the test files in the source tree.

## Project home page

Project home page can be found at the following location:

  http://mamarjan.github.com/gff3-pltools/

For information on the source tree, issues and
how to contribute, see

  http://github.com/mamarjan/bioruby-gff3-pltools

The BioRuby community is on IRC server: irc.freenode.org, channel: #bioruby.

## Cite

If you use this software, please cite one of
  
* [BioRuby: bioinformatics software for the Ruby programming language](http://dx.doi.org/10.1093/bioinformatics/btq475)
* [Biogem: an effective tool-based approach for scaling up open source software development in bioinformatics](http://dx.doi.org/10.1093/bioinformatics/bts080)

## Biogems.info

This Biogem is published at [#bio-gff3-pltools](http://biogems.info/index.html)

## Copyright

Copyright (c) 2012 Marjan Povolni. See LICENSE.txt for further details.

