/*
Preparation for script to work
Full save prompt
Control Freak Chrome Extension with settings applied to each site for jquery
jQuery(function() {
  prompt("Diagnostic: Page Status", "loaded");
});
http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js
*/

Escape::
ExitApp
Return

NumpadEnter::
FormatTime, CurrentDateTime,, MM/dd/yy
FormatTime, SpecialTime,, MMddyy



Websites = http://www.mississippibids.com/search_bids.php,http://www.missouribids.com/search_bids.php,http://www.montanabids.com/search_bids.php,http://www.northcarolinabids.com/search_bids.php,http://www.newhampshirebids.com/search_bids.php,http://www.newjerseybids.com/search_bids.php,http://www.newmexicobids.com/search_bids.php,http://www.northdakotabids.com/search_bids.php,http://www.ohiobids.com/search_bids.php,http://www.oklahomabids.com/search_bids.php,http://www.oregonbids.com/search_bids.php,http://www.pennsylvaniabids.com/search_bids.php,http://www.rhodeislandbids.com/search_bids.php,http://www.southcarolinabids.com/search_bids.php,http://www.tennesseebids.com/search_bids.php,http://www.texasbids.net/search_bids.php,http://www.vermontbids.com/search_bids.php,http://www.virginiabids.com/search_bids.php,http://www.washingtonbids.com/search_bids.php,http://www.dcbids.net/search_bids.php,http://www.westvirginiabids.com/search_bids.php,http://www.wisconsinbids.com/search_bids.php
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
if (Website = "http://www.mississippibids.com/search_bids.php") {
State=Mississippi
}
if (Website = "http://www.missouribids.com/search_bids.php") {
State=Missouri
}
if (Website = "http://www.montanabids.com/search_bids.php") {
State=Montana
}
if (Website = "http://www.northcarolinabids.com/search_bids.php") {
State=NCarolina
}
if (Website = "http://www.newhampshirebids.com/search_bids.php") {
State=NewHamp
}
if (Website = "http://www.newjerseybids.com/search_bids.php") {
State=NewJersey
}
if (Website = "http://www.newmexicobids.com/search_bids.php") {
State=NewMexico
}
if (Website = "http://www.northdakotabids.com/search_bids.php") {
State=NorthDakota
}
if (Website = "http://www.ohiobids.com/search_bids.php") {
State=Ohio
}
if (Website = "http://www.oklahomabids.com/search_bids.php") {
State=Oklahoma
}
if (Website = "http://www.oregonbids.com/search_bids.php") {
State=Oregon
}
if (Website = "http://www.pennsylvaniabids.com/search_bids.php") {
State=Pennsylvania
}
if (Website = "http://www.rhodeislandbids.com/search_bids.php") {
State=RhodeIsland
}
if (Website = "http://www.southcarolinabids.com/search_bids.php") {
State=SouthCarolina
}
if (Website = "http://www.tennesseebids.com/search_bids.php") {
State=Tennessee
}
if (Website = "http://www.texasbids.net/search_bids.php") {
State=Texas
}
if (Website = "http://www.vermontbids.com/search_bids.php") {
State=Vermont
}
if (Website = "http://www.virginiabids.com/search_bids.php") {
State=Virginia
}
if (Website = "http://www.washingtonbids.com/search_bids.php") {
State=Washington
}
if (Website = "http://www.dcbids.net/search_bids.php") {
State=WDC
}
if (Website = "http://www.westvirginiabids.com/search_bids.php") {
State=WestVirginia
}
if (Website = "http://www.wisconsinbids.com/search_bids.php") {
State=Wisconsin
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

Searches = Geographic,GIS,web,map,restoration,ecolog,biolog,vegetation,trails,open space,wildlife,forest,biosamp,birds,orni,Agriculture,geospatial,spatial,environmental
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
Send, C:\Users\Twinv\Desktop\Bids\Day3\%State%
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

MsgBox Scraping AHK-3 Complete
return

