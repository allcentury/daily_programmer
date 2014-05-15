Therefore, if our dictionary consists of the following:
is
my
hello
name
stan
And we are given the following chunks:
2! ! R 1^ 3 0 4^ . E
Then the output text is:
HELLO!
My name is Stan.
Words are always separated by spaces unless they're hyphenated.

The pre-compressed data will be split up into human-readable 'chunks', representing one little segment of the output. In a practical compression system, they will be represented by a few bytes rather than text, but doing it this way makes it easier to write. Our chunks will follow 7 simple rules:
If the chunk is just a number (eg. 37), word number 37 from the dictionary (zero-indexed, so 0 is the 1st word) is printed lower-case.
If the chunk is a number followed by a caret (eg. 37^), then word 37 from the dictionary will be printed lower-case, with the first letter capitalised.
If the chunk is a number followed by an exclamation point (eg. 37!), then word 37 from the dictionary will be printed upper-case.
If it's a hyphen (-), then instead of putting a space in-between the previous and next words, put a hyphen instead.
If it's any of the following symbols: . , ? ! ; :, then put that symbol at the end of the previous outputted word.
If it's a letter R (upper or lower), print a new line.
If it's a letter E (upper or lower), the end of input has been reached.
Remember, this is just for basic text, so not all possible inputs can be compressed. Ignore any other whitespace, like tabs or newlines, in the input.
