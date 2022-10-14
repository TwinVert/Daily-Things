Escape::
ExitApp
Return

NumpadEnter::
FormatTime, CurrentDateTime,, MM/dd/yy
FormatTime, SpecialTime,, MMddyy



Sleep, 3000
MouseClick, left, 1021, 54, 3
Sleep, 1000
Send, https://www.upwork.com/
Sleep, 1000
Send, {ENTER}



Send, {CTRLDOWN}a{CTRLUP}
Send, {CTRLDOWN}c{CTRLUP}
Current = %clipboard%

Bad := "Drew Derderian"

if (InStr(Current, Bad)) {
} else {
MouseClick, left,  1332,  131
Sleep, 4000
Send, twinvert{SHIFTDOWN}{SHIFTUP}{SHIFTDOWN}2{SHIFTUP}gmail.com
MouseClick, left,  934,  443
Sleep, 1000
Sleep, 1000
Send, {SHIFTDOWN}u{SHIFTUP}p{SHIFTDOWN}w{SHIFTUP}ork405
MouseClick, left,  941,  468
Random, rand, 8000, 11000
Sleep, %rand%
}


Random, rand, 10000, 15000
Sleep, %rand%
Searches = GIS,Arcmap,qgis,geospatial,spatial,drupal,javascript
Sort, Searches, Random D,

Loop, parse, Searches, `, 
{
search=%A_LoopField%
Sleep, 1000

MouseClick, left,  796,  215
Sleep, 100
Send, %A_LoopField% ; THIS IS A VERY IMPORTANT LINE THAT NEEDS TO BE SORTED AND CORRECTED
Send, {ENTER}
Random, rand, 2000, 15000
Sleep, %rand%

MouseClick, left,  566,  21
Sleep, 100
Send, {SHIFTDOWN}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{SHIFTUP}{TAB}{SHIFTDOWN}{TAB}{SHIFTUP}{ENTER}{SHIFTDOWN}{SHIFTUP}{SHIFTDOWN}{TAB}{SHIFTUP}{TAB}{TAB}{TAB}{TAB}{ENTER}

;CTR PAGE UP to reset after save


Sleep, 1000
Send, {CTRLDOWN}s{CTRLUP}
Random, rand, 2000, 4000
Sleep, %rand%

MouseClick, left,  1585,  48
Sleep, 1000
Send, {CTRLDOWN}a{CTRLUP}{ENTER}
Sleep, 500
Send, {BACKSPACE}
Random, rand, 2000, 4000
Sleep, %rand%
Send, C:\Users\Twinv\Desktop\UpWork
Random, rand, 2000, 4000
Sleep, %rand%
MouseClick, left,  1181,  935
Sleep, 1000
Send, {CTRLDOWN}a{CTRLUP}
Send, %search%_%SpecialTime%
Send, {ENTER}
Random, rand, 4000, 5000
Sleep, %rand%

}



return

