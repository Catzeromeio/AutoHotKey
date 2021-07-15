SetCapsLockState, AlwaysOff

CapsLock & h::Send {Left}
CapsLock & j::Send {Down}
CapsLock & k::Send {Up}
CapsLock & l::Send {Right}}

CapsLock & `;::Send {Home}
CapsLock & .::Send {End}

CapsLock & '::Send {PgUp}
CapsLock & /::Send {PgDn}

;限定在vscode 程序里面发挥作用
#IfWinActive  ahk_exe Code.exe	;vscode 的exe 名字叫做Code.exe 
Esc::
        sendinput,{Esc}
        ; sendinput,{Shift}
        PostMessage, 0x50, 0, 0x4090409, , A ;切换为英文0x4090409=67699721
return
#If

; Ctrl::
; WinGetActiveTitle, Title
; thread =: WinExist(Title)
; MsgBox % GetKeyboardLayout(getWindowThreadProcessId(thread))
; return

; GetKeyboardLayout(Thread := 0)
; {
;     return DllCall("user32.dll\GetKeyboardLayout", "UInt", Thread)
; }
; ; ===============================================================================================================================


; F12::
;    WinGetActiveTitle, Title
;    MsgBox, The active window is "%Title%".
; return


; getWindowThreadProcessId(hwnd)
; {
;     return dllCall("user32\GetWindowThreadProcessId", "Uint", hwnd)
; }