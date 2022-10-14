/*
Preparation for script to work
Full save prompt
Control Freak Chrome Extension with settings applied to each site for jquery
jQuery(function() {
  prompt("Diagnostic: Page Status", "loaded");
});
*/

Escape::
ExitApp
Return

NumpadEnter::
FormatTime, CurrentDateTime,, MM/dd/yy
FormatTime, SpecialTime,, MMddyy



Websites = http://www.alabamabids.com/search_bids.php,http://www.bidsalaska.com/search_bids.php,http://www.arizonabids.net/search_bids.php,http://www.arkansasbids.com/search_bids.php,http://www.californiabids.com/search_bids.php,http://www.connecticutbids.com/search_bids.php,http://www.delawarebids.com/search_bids.php,http://www.floridabids.net/search_bids.php,http://www.georgiabids.net/search_bids.php,http://www.hawaiibids.net/search_bids.php,http://www.idahobids.com/search_bids.php,http://www.illinoisbids.com/search_bids.php,http://www.indianabids.com/search_bids.php,http://www.iowabids.com/search_bids.php,http://www.louisianabids.com/search_bids.php,http://www.mainebids.com/search_bids.php,http://www.marylandbids.com/search_bids.php,http://www.massbids.net/search_bids.php,http://www.michiganbids.net/search_bids.php,http://www.minnesotabids.com/search_bids.php,http://www.floridabids.net/search_bids.php
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
MouseClick, left,  526,  203
MouseClick, left,  526,  203
Sleep, 100
Send, {CTRLDOWN}c{CTRLUP}
Login=%clipboard%
Sleep, 1000

/*
Selection of Username Field, password, and login button
*/
if (Login = "Username") {
MouseClick, left,  695,  199
Sleep, 1000
Send, {CTRLDOWN}a{CTRLUP}
Send, {BACKSPACE}
Send, twinvert{SHIFTDOWN}{SHIFTUP}{SHIFTDOWN}2{SHIFTUP}gmail.com
MouseClick, left,  839,  202
Sleep, 1000
Send, {CTRLDOWN}a{CTRLUP}
Send, {BACKSPACE}
Sleep, 1000
Send, {SHIFTDOWN}napc{SHIFTUP}323{SHIFTDOWN}1{SHIFTUP}
MouseClick, left, 911,  204
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
if (Website = "http://www.alabamabids.com/search_bids.php") {
State=Alabama
}
if (Website = "http://www.bidsalaska.com/search_bids.php") {
State=Alaska
}
if (Website = "http://www.arizonabids.net/search_bids.php") {
State=Arizona
}
if (Website = "http://www.arkansasbids.com/search_bids.php") {
State=Arkansas
}
if (Website = "http://www.californiabids.com/search_bids.php") {
State=California
}
if (Website = "http://www.connecticutbids.com/search_bids.php") {
State=Connecticut
}
if (Website = "http://www.delawarebids.com/search_bids.php") {
State=Delaware
}
if (Website = "http://www.floridabids.net/search_bids.php") {
State=Florida
}
if (Website = "http://www.georgiabids.net/search_bids.php") {
State=Georgia
}
if (Website = "http://www.hawaiibids.net/search_bids.php") {
State=Hawaii
}
if (Website = "http://www.idahobids.com/search_bids.php") {
State=Idaho
}
if (Website = "http://www.illinoisbids.com/search_bids.php") {
State=Illinois
}
if (Website = "http://www.indianabids.com/search_bids.php") {
State=Indiana
}
if (Website = "http://www.iowabids.com/search_bids.php") {
State=Iowa
}
if (Website = "http://www.louisianabids.com/search_bids.php") {
State=Louisiana
}
if (Website = "http://www.mainebids.com/search_bids.php") {
State=Maine
}
if (Website = "http://www.marylandbids.com/search_bids.php") {
State=Maryland
}
if (Website = "http://www.massbids.net/search_bids.php") {
State=Mass
}
if (Website = "http://www.michiganbids.net/search_bids.php") {
State=Michigan
}
if (Website = "http://www.minnesotabids.com/search_bids.php") {
State=Minnesota
}
if (Website = "http://www.floridabids.net/search_bids.php") {
State=Florida
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
Send, %A_LoopField%
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
Send, C:\Users\Twinv\Desktop\Bids\Day2\%State%
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

MsgBox Scraping AHK-2 Complete
return

