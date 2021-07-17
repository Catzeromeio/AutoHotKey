; 除了capslock，保证其余键位的功能不受影响的前提下,
; 新增组合键功能        
SetCapsLockState, AlwaysOff

; hjkl -> 方向键
CapsLock & h::Send {Left}
CapsLock & j::Send {Down}
CapsLock & k::Send {Up}
CapsLock & l::Send {Right}}

 
CapsLock & `;::Send {Home}
CapsLock & .::Send {End}

CapsLock & '::Send {PgUp}
CapsLock & /::Send {PgDn}

; 中括号，大括号和小括号方便输入
; 由于合适键位有限，中括号只移动了左半部分
CapsLock & y::[
CapsLock & u::{
CapsLock & i::(
CapsLock & o::)
CapsLock & p::}

;限定在vscode 程序里面发挥作用
#IfWinActive  ahk_exe Code.exe	;vscode 的exe 名字叫做Code.exe 
Esc::
        sendinput,{Esc}
        PostMessage, 0x50, 0, 0x4090409, , A ;切换为英文键盘0x4090409=67699721
return
#If