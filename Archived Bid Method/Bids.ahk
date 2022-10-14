NumpadEnter::
FormatTime, CurrentDateTime,, MM/dd/yy
FormatTime, SpecialTime,, MMddyy

Send, {ENTER}
Sleep, 2000

MouseClick, left,  683,  353
Sleep, 100
Send, twinvert{SHIFTDOWN}{SHIFTUP}{SHIFTDOWN}2{SHIFTUP}gmail.com
MouseClick, left,  815,  344
Sleep, 100
Send, {SHIFTDOWN}napc{SHIFTUP}323{SHIFTDOWN}1{SHIFTUP}
MouseClick, left,  860,  350

return


NumpadAdd::
InputBox, search, Search, Enter a search term

FormatTime, CurrentDateTime,, MM/dd/yy
FormatTime, SpecialTime,, MMddyy
MouseClickDrag, left, 1021,  54, 125,  58
Send, {CTRLDOWN}c{CTRLUP}
Website=%clipboard%
if (Website = "http://www.coloradobids.net/search_bids.php") {
State=Colorado
}
if (Website = "http://www.utahbids.net/search_bids.php") {
State=Utah
}
if (Website = "http://www.kansasbids.com/search_bids.php") {
State=Kansas
}
if (Website = "http://www.kentuckybids.com/search_bids.php") {
State=Kentucky
}
if (Website = "http://www.coloradobids.net/search_bids.php") {
State=Colorado
}
if (Website = "http://www.nebraskabids.com/search_bids.php") {
State=Nebraska
}
if (Website = "http://www.nevadabids.com/search_bids.php") {
State=Nevada
}
if (Website = "http://www.southdakotabids.com/search_bids.php") {
State=SouthDakota
}
if (Website = "http://www.wyomingbids.com/search_bids.php") {
State=Wyoming
}

MouseClickDrag, left, 753, 659, 455, 655
Send, {BACKSPACE}
Sleep, 300
SendInput %CurrentDateTime%
MouseClickDrag, left, 910, 658, 455, 655
Send, {BACKSPACE}
Sleep, 100
Send, 01/01/19
MouseClickDrag, left, 915, 695, 455, 655
Send, {BACKSPACE}
Sleep, 100
Send, %search%
MouseClick, left,  802,  732
Sleep, 2400

MouseClickDrag, left, 603, 761, 480, 757
Send, {CTRLDOWN}c{CTRLUP}
Check=%clipboard%


if (Check = "No result") {
Return
}

Send, {CTRLDOWN}s{CTRLUP}
Sleep, 100
MouseClick, left,  1585,  48
Sleep, 1000
Send, {CTRLDOWN}a{CTRLUP}{ENTER}
Send, {BACKSPACE}
Sleep, 2000
Send, C:\Users\Twinv\Desktop\TwinVert\Bids\%State%
Sleep, 3000
MouseClick, left,  1181,  935
Sleep, 100
Send, {CTRLDOWN}a{CTRLUP}
Send, %search%_%SpecialTime%_%State%
Send, {ENTER}

return

