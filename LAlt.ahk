#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

::wlml::When life gives you lemon🍋 make a lemonade 🍶🧊🥛🍋🥄
::idk::I don't know 

; Control <==> CapsLock
Insert::CapsLock
CapsLock::Control

; WSL paste
setkeydelay 70

<!V::GoTo, CMD

CMD:
;Send {Raw}%Clipboard%
vText := Clipboard
Clipboard := vText
Loop Parse, vText, % "`n", % "`r"
{
    Send, % "{Text}" A_LoopField
    Send, % "+{Enter}"
}
return

; Making LAlt keys possible ;
LAlt::return
<!Space::send {Space}
<!BackSpace:: send {BackSpace}

; Number row!

; <!+A:: Send 👈🏼
<!A:: Send 1
; <!+S:: Send ✊🏼
<!S:: Send 2
; <!+D:: Send 💪🏼
<!D:: Send 3
<!+F:: Send 😂
<!F:: Send 4
; <!+G:: Send 😂
<!G:: Send 5
; <!+H:: Send 💪🏼
<!H:: Send 6
<!+J:: Send 😅
<!J:: Send 7
; <!+K:: Send 😅
<!K:: Send 8
; <!+L:: Send 💪🏼
<!L:: Send 9
; <!+;:: Send 🤦🏼‍♂️
<!;:: Send 0
; <!+':: Send Nudes
<!':: Send _

; Bottom Shortcut row ;

; <!+Z:: Send 👈🏼
; <!Z:: Send 1
; <!+X:: Send 👈🏼
; <!X:: Send 1
; <!+C:: Send 👈🏼
<!C:: SendEvent {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up} 
; <!+V:: Send 👈🏼
; <!V:: Send 1
; <!+B:: Send 👈🏼
; <!B:: Send 1
; <!+N:: Send 👈🏼
<!N:: SendEvent {LWin down}{LCtrl down}{Right down}{LWin up}{LCtrl up}{Right up} 
; <!+,:: Send 👈🏼
; <!,:: Send 1
; <!+.:: Send 👈🏼
; <!.:: Send 1