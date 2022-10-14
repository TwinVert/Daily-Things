/*
Preparation for script to work
Full save prompt
Control Freak Chrome Extension with settings applied to each site for jquery
jQuery(function() {
  prompt("Diagnostic: Page Status", "loaded");
});
Disable adblock
*/


Escape::
ExitApp
Return

NumpadEnter::
FormatTime, CurrentDateTime,, MM/dd/yy
FormatTime, SpecialTime,, MMddyy


Websites = http://www.coloradobids.net/search_bids.php,http://www.utahbids.net/search_bids.php,http://www.kansasbids.com/search_bids.php,http://www.kentuckybids.com/search_bids.php,http://www.nebraskabids.com/search_bids.php,http://www.nevadabids.com/search_bids.php,http://www.southdakotabids.com/search_bids.php,http://www.wyomingbids.com/search_bids.php
Sort, Websites, Random D,


Loop, parse, Websites, `,
{
Sleep, 3000
MouseClick, left, 1021, 54
Send, {CTRLDOWN}a{CTRLUP}
Sleep, 1000
Send, %A_LoopField%
Sleep, 1000
Send, {ENTER}

CounterNow=0

Loop {
clipboard=
Send, {CTRLDOWN}c{CTRLUP}
LoadCheck=%clipboard%
	if (LoadCheck = "loaded") {
	Send, {ENTER}
	break
	}
	
Sleep, 2000
CounterNow += 2
if (CounterNow = 120) {
break
}
}


if (CounterNow = 120) {
continue
}

/*
Selection of Username Text
*/

Send, {CTRLDOWN}a{CTRLUP}
Send, {CTRLDOWN}c{CTRLUP}
Current = %clipboard%

Bad := "Username:"

if (InStr(Current, Bad)) {
MouseClick, left,  644,  608
Send,	 +{TAB 7}
Sleep, 1000
Send, {CTRLDOWN}a{CTRLUP}
Send, {BACKSPACE}
Send, twinvert{SHIFTDOWN}{SHIFTUP}{SHIFTDOWN}2{SHIFTUP}gmail.com
Send, {TAB}
Sleep, 1000
Send, {CTRLDOWN}a{CTRLUP}
Send, {BACKSPACE}
Sleep, 1000
Send, {SHIFTDOWN}napc{SHIFTUP}323{SHIFTDOWN}1{SHIFTUP}
Send, {TAB}
Send, {Enter}
Random, rand, 10000, 15000
Sleep, %rand%
}

CounterNow=0

Loop {
clipboard=
Send, {CTRLDOWN}c{CTRLUP}
LoadCheck=%clipboard%
	if (LoadCheck = "loaded" or LoadCheck = "TwinVert") {
	Send, {ENTER}
	break
	}
	
Sleep, 2000
CounterNow += 2
if (CounterNow = 120) {
break
}
}

if (CounterNow = 120) {
continue
}


Sleep, 2000
MouseClick, left,  797,  55
Sleep, 100
Send, {CTRLDOWN}a{CTRLUP}
Sleep, 100
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


Sleep, 3000
MouseClick, left,  746,  401
Sleep, 1000
Send, {TAB 4}
SendInput %CurrentDateTime%
Sleep, 1000
Send, {TAB}
Sleep, 1000
Send, 01/01/21
Send, {TAB 3}
Sleep, 1000

Searches = Geographic,GIS,web,map,restoration,ecolog,biolog,vegetation,trails,open space,wildlife,forest,biosamp,birds,ornit,Agriculture,geospatial,spatial,environmental
Sort, Searches, Random D,

Loop, parse, Searches, `, 
{
search=%A_LoopField%
Sleep, 1000
Send, %A_LoopField% ; THIS IS A VERY IMPORTANT LINE THAT NEEDS TO BE SORTED AND CORRECTED
Random, rand, 2000, 15000
Sleep, %rand%

Send, {TAB 3}
Sleep, 300
Send, {ENTER}
Sleep, 4000

Send, {CTRLDOWN}a{CTRLUP}
Send, {CTRLDOWN}c{CTRLUP}
Current = %clipboard%

Sleep, 300
Send +{TAB 3}

Bad := "No result"

if (InStr(Current, Bad)) {
continue
}

Sleep, 1000
Send, {CTRLDOWN}s{CTRLUP}
Random, rand, 2000, 4000
Sleep, %rand%

MouseClick, left,  1468,  42
Random, rand, 2000, 4000
Sleep, %rand%
Send, C:\Users\Twinv\Desktop\Bids\Day1\%State%
Send, {ENTER}
Random, rand, 2000, 4000
Sleep, %rand%
MouseClick, left,  1097,  933
Sleep, 1000
Send, %search%_%SpecialTime%_%State%
Send, {ENTER}
Random, rand, 4000, 5000
Sleep, %rand%
}}

MsgBox Scraping AHK-1 Complete
return



