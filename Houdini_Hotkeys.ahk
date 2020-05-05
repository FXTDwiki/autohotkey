;
; AutoHotkey Version: 1.1.x
; Language:       English
; Platform:       Windowns 10
; Author:         Nicolas Hayat (http://fxtd.free.fr/wiki/)
;
; Script Function:
;	Unreal Hotkeys functionality in Houdini VOP context (you can customize this template by editing it)
;	Add middle click button key on azerty key "<"
;	Add hotkeys CTRL+SHIFT+C and CTRL+SHIFT+V to "Copy Parameter" and "Paste Relative References" instead of doing a right click 


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#IfWinActive ahk_class Qt5QWindowIcon ;name of the window for Houdini in Windows


;------------------
;MULTIPLY VOP NODE
;------------------
~LButton & NumpadMult::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, multiply
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;ADD VOP NODE
;------------------
~LButton & NumpadAdd::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, add
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;SUBTRACT VOP NODE
;------------------
~LButton & NumpadSub::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, subtract
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;DIVIDE VOP NODE
;------------------
~LButton & NumpadDiv::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, divide
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;SPLIT VECTOR INTO 3 FLOAT VOP NODE
;------------------
~LButton & S::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, vector float
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;COMBINE 3 FLOAT INTO VECTOR VOP NODE
;------------------
~LButton & Numpad3::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, float vector
	Send, {enter}
	Sleep 125
	Click
return

;------------------
; CREATE A VECTOR 4 VOP NODE
; (for vector + TIME) 
;------------------
~LButton & Numpad4::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, vtv4
	Send, {enter}
	Sleep 125
	Click
return


;------------------
;CONSTANT VOP NODE
;------------------
~LButton & C::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, constant
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;NORMALIZE VOP NODE
;------------------
~LButton & N::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, normalize
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;POWER VOP NODE
;------------------
~LButton & ^::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, power
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;PARAMETER VOP NODE
;------------------
~LButton & P::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, param
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;TURBULENT NOISE
;------------------
~LButton & T::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, turb noise
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;RAMP PARAMETER VOP NODE
;------------------
~LButton & R::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, ramp param
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;FIT RANGE VOP NODE
;------------------
~LButton & F::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, fit range
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;BIND VOP NODE
;------------------
~LButton & B::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, bind
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;BIND EXPORT VOP NODE
;------------------
~LButton & X::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, bind export
	Send, {enter}
	Sleep 125
	Click
return


;------------------
;AAFLOW NOISE 
;------------------
~LButton & A::
	KeyWait LButton
	Send, {Tab}
	Sleep 50
	Send, AA flow
	Send, {enter}
	Sleep 125
	Click
return

;------------------
;AFFECT < + LMB to SIMULATE MIDDLE MOUSE CLICK ON LAPTOP (AZERTY KEYBOARD)
;------------------
~< & LButton::
	Send, {MButton down}
	KeyWait <
	Send, {MButton up}
return


;------------------
;CTRL+SHIFT+C = COPY PARAMETER
;------------------
^+c::
	Send, {RButton}
	Sleep 50
	Send, {down}{down}{down}{down}{down}{down}{down}
	Send, {enter}
return

;------------------
;CTRL+SHIFT+V = PASTE RELATIVE REFERENCE
;------------------
^+v::
	Send, {RButton}
	Sleep 50
	Send, {down}{down}{down}{down}{down}{down}{down}{down}{down}{down}
	Send, {enter}
	Sleep 125
;	Send, {enter}
return