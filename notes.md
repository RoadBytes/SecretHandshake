# Secret Handshake

1. Understand Specs
  * decimal integer => binary
  * determine which composite binary numbers are there
     1 = wink
     10 = double blink
     100 = close your eyes
     1000 = jump
     10000 = Reverse the order of the operations in the secret handshake.
  * 1 => ['wink']
    1 converts to 1
    * run through `moves`, ie, go through each char of `moves` with index
      and if an elements is '1' include it's coresponding
      handshake MOVE
  * return string depending on binary numbers from conversion
  * '#commands' returns an array

  instance method SecretHandshake#commands

2. Clean up rough draft
3. Get rough code outline
4. Work with test suite
5. Refactors
