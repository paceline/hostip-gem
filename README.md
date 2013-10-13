# Hostip

A simple Ruby Gem wrapper for hostip.info (rewrite of [Philipp Fehre's original version](http://https://github.com/sideshowcoder/hostip-gem))

## Install

Put this in your Gemfile

```ruby
gem 'hostip', git: 'git://github.com/paceline/hostip-gem.git'
```

## Example

```ruby
require 'rubygems'
require 'hostip'

# Run without ip parameter to use client IP
hip = Hostip::Location.new

# Run with ip parameter to use other IP
hip = Hostip::Location.new(ip: "74.125.77.104")

# get current ip
hip.ip
	
# get current country
hip.country_name
# get country abbriviated
hip.country_abbrev
# get current geo location
hip.geo_location 
```

## License 

(the BSD license)

Copyright 2010 Philipp Fehre / 2013 Ulf Möhring. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are
permitted provided that the following conditions are met:

   1. Redistributions of source code must retain the above copyright notice, this list of
      conditions and the following disclaimer.

   2. Redistributions in binary form must reproduce the above copyright notice, this list
      of conditions and the following disclaimer in the documentation and/or other materials
      provided with the distribution.

THIS SOFTWARE IS PROVIDED BY PHILIPP FEHRE ``AS IS'' AND ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those of the
authors and should not be interpreted as representing official policies, either expressed
or implied, of Philipp Fehre.
