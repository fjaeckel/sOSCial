# sOSCial

This is a hack authored by Frederic Jaeckel (fjaeckel 'at' jc-ix 'dot' net)
during the Music Hackday Barcelona 2012.

## Environment
Tools you need to have installed:

  * ruby 1.9.2 (or higher) including the bundler gem
  * OSCulator - demo or licensed version (it's just 14 EUR, it's darn cheap!)
  * Any MIDI capable program such as f.e. Ableton Live8 (used in this
    prototype)

## How to run

Run this in a Terminal:

    # git clone https://github.com/fjaeckel/sOSCial.git

Fire up OSCulator and load the sOSCial/config/osculator.oscd, ensure OSCulator
is running on port 8000.

Take two Terminals and run the following commands

    # cd sOSCial
    # bundle install
    # ./osc-em.rb
    (second terminal)
    # cd sOSCial
    # ./web.rb

Now point your browser to http://localhost:4567/ and you should see the
controls. Point it to http://localhost:4567/master and you see it including the
knobs.

Now you just map the MIDI notes as usual to your favorite audio tool, this has
been tested with Ableton Live8, though all others should work as well.

## License

Copyright (c) 2012, Frederic Jaeckel
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. All advertising materials mentioning features or use of this software
   must display the following acknowledgement:
   This product includes software developed by Frederic Jaeckel.
4. Neither the name of Frederic Jaeckel nor the
   names of its contributors may be used to endorse or promote products
   derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY FREDERIC JAECKEL ''AS IS'' AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL FREDERIC JAECKEL BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
