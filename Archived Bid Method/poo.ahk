f11::suspend
return

^f11::suspend
return

\::
Send, {ESC}
MouseClick, left,  997,  438
Sleep, 100
return

NumpadEnter::
Send, i
MouseClick, right,  1885,  822
Sleep, 100
Send, i
MouseClick, left,  952,  398
return

$2::
send, 2
send, 4
send, 5
return

$e::
Random, count, 100, 300
Send {Shift down}
Send e
sleep %count%
Send {shift up}
return