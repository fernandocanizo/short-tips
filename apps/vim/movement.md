# Movement in Vim

## Basic

h   move one character left
j   move one row down
k   move one row up
l   move one character right
w   move to beginning of next word
b   move to previous beginning of word
e   move to end of word
W   move to beginning of next word after a whitespace
B   move to beginning of previous word before a whitespace
E   move to end of word before a whitespace


## Advanced

0   move to beginning of line
$   move to end of line
_   move to first non-blank character of the line
g_  move to last non-blank character of the line

gg  move to first line
G   move to last line
nG  move to n'th line of file (n is a number; 12G moves to line 12)

H   move to top of screen
M   move to middle of screen
L   move to bottom of screen

z.  scroll the line with the cursor to the center of the screen
zt  scroll the line with the cursor to the top
zb  scroll the line with the cursor to the bottom

Ctrl-D  move half-page down
Ctrl-U  move half-page up
Ctrl-B  page up
Ctrl-F  page down
Ctrl-O  jump to last (older) cursor position
Ctrl-I  jump to next cursor position (after Ctrl-O)
Ctrl-Y  move view pane up
Ctrl-E  move view pane down

n   next matching search pattern
N   previous matching search pattern
*   next whole word under cursor
#   previous whole word under cursor
g*  next matching search (not whole word) pattern under cursor
g#  previous matching search (not whole word) pattern under cursor

%   jump to matching bracket { } [ ] ( )

fX  to next 'X' after cursor, in the same line (X is any character)
FX  to previous 'X' before cursor (f and F put the cursor on X)
tX  til next 'X' (similar to above, but cursor is before X)
TX  til previous 'X'
;   repeat above, in same direction
,   repeat above, in reverse direction
