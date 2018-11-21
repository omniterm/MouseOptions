;
; AutoHotkey Version: 1.1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         Mr.Phelps <david@oslinux.net>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
OnMessage(0x200, "WM_MOUSEMOVE")		;Hover Support

Gui, +LastFound
Menu, Tray, Icon, Images\G700s.ico
Gui, Margin, 0, 0, 0, 0,
Gui, Color, 69be28, Mouse Options
Gui, -Caption +ToolWindow +AlwaysOnTop


;Mouse Image and Trigger Buttons
Gui, Add, Picture, x216 y274 altsubmit BackgroundTrans vTriggerG8v gTriggerG8, Images\g8.png						;G8
Gui, Add, Picture, x198 y264 altsubmit BackgroundTrans vTriggerG9v gTriggerG9, Images\g9.png						;G9
Gui, Add, Picture, x175 y246 altsubmit BackgroundTrans vTriggerG10v gTriggerG10, Images\g10.png						;G10
Gui, Add, Picture, x349 y235 altsubmit BackgroundTrans vTriggerG11v gTriggerG11, Images\g11.png						;G11
Gui, Add, Picture, x170 y198 altsubmit BackgroundTrans vTriggerLeftBv gTriggerLeftB, Images\left.png				;Left Button
Gui, Add, Picture, x276 y148 altsubmit BackgroundTrans vTriggerRightBv gTriggerRightB, Images\right.png				;Right Button
Gui, Add, Picture, x244 y174 altsubmit BackgroundTrans vTriggerWheelv gTriggerWheel, Images\wheel.png				;Wheel
Gui, Add, Picture, x236 y331 altsubmit BackgroundTrans vTriggerForwardv gTriggerForward, Images\forward.png			;G5 and G7
Gui, Add, Picture, x308 y367 altsubmit BackgroundTrans vTriggerBackv gTriggerBack, Images\back.png					;G4 and G6
Gui, Add, Picture, x130 y125 altsubmit BackgroundTrans vG700s gUImove, Images\G700s.png								;Mouse Image


;Text Labels
Gui, Font, cBlack s12
Gui, Add, Picture, x10 y77 w120 h227 altsubmit BackgroundTrans vWheelBackground, Images\lbox.png
Gui, Add, Text, x10 y54 w120 Center altsubmit BackgroundTrans vWSUT, Scroll Up										;Scroll Up Label
Gui, Add, Text, x10 y104 w120 Center altsubmit BackgroundTrans vWSDT, Scroll Down									;Scroll Up Label
Gui, Add, Text, x10 y154 w120 Center altsubmit BackgroundTrans vWCT, Wheel Click									;Scroll Up Label
Gui, Add, Text, x10 y204 w120 Center altsubmit BackgroundTrans vWSLT, Scroll Left									;Scroll Up Label
Gui, Add, Text, x10 y254 w120 Center altsubmit BackgroundTrans vWSRT, Scroll Right									;Scroll Up Label


; Button DropDownList
Gui, Add, DropDownList, x10 y216 w120 r6 altsubmit vLeftB, Right Click|Left Click||Middle Click|Cut|Copy|Paste		;Left Button DropDownList
Gui, Add, DropDownList, x10 y154 w120 r6 altsubmit vRightB, Right Click||Left Click|Middle Click|Cut|Copy|Paste		;Right Button DropDownList
Gui, Add, DropDownList, x10 y76 w120 r6 altsubmit BackgroundTrans vWheelSU, Scroll Up||Cut|Copy|Paste				;Wheel Scroll Up DropDownList
Gui, Add, DropDownList, x10 y126 w120 r6 altsubmit BackgroundTrans vWheelSD, Scroll Down||Cut|Copy|Paste			;Wheel Scroll Down DropDownList
Gui, Add, DropDownList, x10 y176 w120 r6 altsubmit BackgroundTrans vWheelC, Middle Click||Cut|Copy|Paste			;Wheel Click DropDownList
Gui, Add, DropDownList, x10 y226 w120 r6 altsubmit BackgroundTrans vWheelSL, Scroll Left||Cut|Copy|Paste			;Wheel Scroll Left DropDownList
Gui, Add, DropDownList, x10 y276 w120 r6 altsubmit BackgroundTrans vWheelSR, Scroll Right||Cut|Copy|Paste			;Wheel Scroll Right DropDownList
Gui, Add, DropDownList, x10 y402 w120 r6 altsubmit vG4, Right Click||Left Click|Scroll Right|Cut|Copy|Paste			;G4 DropDownList
Gui, Add, DropDownList, x10 y365 w120 r6 altsubmit vG5, Right Click||Left Click|Scroll Right|Cut|Copy|Paste			;G5 DropDownList
Gui, Add, DropDownList, x10 y370 w120 r6 altsubmit vG6, Right Click||Left Click|Scroll Right|Cut|Copy|Paste			;G6 DropDownList
Gui, Add, DropDownList, x10 y331 w120 r6 altsubmit vG7, Right Click||Left Click|Scroll Right|Cut|Copy|Paste			;G7 DropDownList
Gui, Add, DropDownList, x10 y274 w120 r6 altsubmit vG8, Right Click||Left Click|Scroll Right|Cut|Copy|Paste			;G8 DropDownList
Gui, Add, DropDownList, x10 y263 w120 r6 altsubmit vG9, Right Click||Left Click|Scroll Right|Cut|Copy|Paste			;G9 DropDownList
Gui, Add, DropDownList, x10 y244 w120 r6 altsubmit vG10, Right Click||Left Click|Scroll Right|Cut|Copy|Paste		;G10 DropDownList
Gui, Add, DropDownList, x10 y235 w120 r6 altsubmit vG11, Right Click||Left Click|Scroll Right|Cut|Copy|Paste		;G11 DropDownList


; PulseGlow
Gui, Add, Picture, x130 y125 altsubmit BackgroundTrans vLeftBglow, Images\LeftBpulseglow.png						;Left Glow
Gui, Add, Picture, x130 y125 altsubmit BackgroundTrans vRightBglow, Images\RightBpulseglow.png						;Right Glow
Gui, Add, Picture, x130 y125 altsubmit BackgroundTrans vWheelCglow, Images\Wheelpulseglow.png						;Wheel Scroll Glow
Gui, Add, Picture, x130 y125 altsubmit BackgroundTrans vG4glow, Images\G4pulseglow.png								;G4 Glow
Gui, Add, Picture, x130 y125 altsubmit BackgroundTrans vG5glow, Images\G5pulseglow.png								;G5 Glow
Gui, Add, Picture, x130 y125 altsubmit BackgroundTrans vG6glow, Images\G6pulseglow.png								;G6 Glow
Gui, Add, Picture, x130 y125 altsubmit BackgroundTrans vG7glow, Images\G7pulseglow.png								;G7 Glow
Gui, Add, Picture, x130 y125 altsubmit BackgroundTrans vG8glow, Images\G8pulseglow.png								;G8 Glow
Gui, Add, Picture, x130 y125 altsubmit BackgroundTrans vG9glow, Images\G9pulseglow.png								;G9 Glow
Gui, Add, Picture, x130 y125 altsubmit BackgroundTrans vG10glow, Images\G10pulseglow.png							;G10 Glow
Gui, Add, Picture, x130 y125 altsubmit BackgroundTrans vG11glow, Images\G11pulseglow.png							;G11 Glow


; Lines
Gui, Add, Picture, x130 y230 w95 altsubmit BackgroundTrans vLeftBLine, Images\lbox.png								;Left Button Line
Gui, Add, Picture, x130 y168 w190 altsubmit BackgroundTrans vRightBLine, Images\lbox.png							;Right Button Line
Gui, Add, Picture, x130 y190 w148 altsubmit BackgroundTrans vWheelCLine, Images\lbox.png							;Wheel Click Line
Gui, Add, Picture, x130 y77 h227 altsubmit BackgroundTrans vWheelCLineU, Images\lbox.png							;Wheel Background for text
Gui, Add, Picture, x130 y416 w240 altsubmit BackgroundTrans vG4Line, Images\lbox.png								;G4 Line
Gui, Add, Picture, x130 y374 w157 altsubmit BackgroundTrans vG5Line, Images\lbox.png								;G5 Line
Gui, Add, Picture, x130 y384 w206 altsubmit BackgroundTrans vG6Line, Images\lbox.png								;G6 Line
Gui, Add, Picture, x130 y350 w134 altsubmit BackgroundTrans vG7Line, Images\lbox.png								;G7 Line
Gui, Add, Picture, x130 y288 w108 altsubmit BackgroundTrans vG8Line, Images\lbox.png								;G8 Line
Gui, Add, Picture, x130 y277 w78 altsubmit BackgroundTrans vG9Line, Images\lbox.png									;G9 Line
Gui, Add, Picture, x130 y258 w58 altsubmit BackgroundTrans vG10Line, Images\lbox.png								;G10 Line
Gui, Add, Picture, x130 y249 w238 altsubmit BackgroundTrans vG11Line, Images\lbox.png								;G11 Line


;Hide Left Controls
GuiControl, Hide, LeftB
GuiControl, Hide, LeftBLine
GuiControl, Hide, LeftBglow
;Hide Right Controls
GuiControl, Hide, RightB
GuiControl, Hide, RightBLine
GuiControl, Hide, RightBglow
;Hide Wheel Controls
GuiControl, Hide, WheelC
GuiControl, Hide, WheelCLine
GuiControl, Hide, WheelCLineU
GuiControl, Hide, WheelBackground
GuiControl, Hide, WheelCglow
GuiControl, Hide, WheelSU
GuiControl, Hide, WheelSD
GuiControl, Hide, WheelSL
GuiControl, Hide, WheelSR
GuiControl, Hide, WSUT
GuiControl, Hide, WSDT
GuiControl, Hide, WCT
GuiControl, Hide, WSLT
GuiControl, Hide, WSRT
;Hide G4 Controls
GuiControl, Hide, G4
GuiControl, Hide, G4glow
GuiControl, Hide, G4Line
;Hide G5 Controls
GuiControl, Hide, G5
GuiControl, Hide, G5glow
GuiControl, Hide, G5Line
;Hide G6 Controls
GuiControl, Hide, G6
GuiControl, Hide, G6glow
GuiControl, Hide, G6Line
;Hide G7 Controls
GuiControl, Hide, G7
GuiControl, Hide, G7glow
GuiControl, Hide, G7Line
;Hide G8 Controls
GuiControl, Hide, G8
GuiControl, Hide, G8glow
GuiControl, Hide, G8Line
;Hide G9 Controls
GuiControl, Hide, G9
GuiControl, Hide, G9glow
GuiControl, Hide, G9Line
;Hide G10 Controls
GuiControl, Hide, G10
GuiControl, Hide, G10glow
GuiControl, Hide, G10Line
;Hide G11 Controls
GuiControl, Hide, G11
GuiControl, Hide, G11glow
GuiControl, Hide, G11Line
;Test UI Reload button
Gui, Add, Button, x650 y140 w120 h23 gmrReload, Reloaded
WinSet, TransColor, 69be28
Gui, Show, w800 h600, Mouse Options
Return

WM_MOUSEMOVE()
{
	static CurrControl, PrevControl, _TT  ; _TT is kept blank for use by the ToolTip command below.
    CurrControl := A_GuiControl
	
	GuiControlGet LeftBShow, Visible, LeftB
	GuiControlGet RightBShow, Visible, RightB
	GuiControlGet WheelCShow, Visible, WheelC
	GuiControlGet G4Show, Visible, G4
	GuiControlGet G5Show, Visible, G5
	GuiControlGet G6Show, Visible, G6
	GuiControlGet G7Show, Visible, G7
	GuiControlGet G8Show, Visible, G8
	GuiControlGet G9Show, Visible, G9
	GuiControlGet G10Show, Visible, G10
	GuiControlGet G11Show, Visible, G11
	
	;Left Button Trigger
	If CurrControl = TriggerLeftBv
		GuiControl, Show, LeftBglow
	Else If LeftBShow = 0
		GuiControl, Hide, LeftBglow
	
	;Right Button Trigger
	If CurrControl = TriggerRightBv
		GuiControl, Show, RightBglow
	Else If RightBShow = 0
		GuiControl, Hide, RightBglow

	;Wheel Trigger
	If CurrControl = TriggerWheelv
		GuiControl, Show, WheelCglow
	Else If WheelCShow = 0
		GuiControl, Hide, WheelCglow
	
	;Back Buttons
	If CurrControl = TriggerBackv
	{
		GuiControl, Show, G4glow
		GuiControl, Show, G6glow
	}
	Else If G4Show = 0 
	{
		GuiControl, Hide, G4glow
		GuiControl, Hide, G6glow
	}
	
	;Forward Buttons
	If CurrControl = TriggerForwardv
	{
		GuiControl, Show, G5glow
		GuiControl, Show, G7glow
	}
	Else If G5Show = 0 
	{
		GuiControl, Hide, G5glow
		GuiControl, Hide, G7glow
	}
	
	;G8 Button Trigger
	If CurrControl = TriggerG8v
		GuiControl, Show, G8glow
	Else If G8Show = 0
		GuiControl, Hide, G8glow
	
	;G9 Button Trigger
	If CurrControl = TriggerG9v
		GuiControl, Show, G9glow
	Else If G9Show = 0
		GuiControl, Hide, G9glow
		
	;G10 Button Trigger
	If CurrControl = TriggerG10v
		GuiControl, Show, G10glow
	Else If G10Show = 0
		GuiControl, Hide, G10glow
	
	;G11 Button Trigger
	If CurrControl = TriggerG11v
		GuiControl, Show, G11glow
	Else If G11Show = 0
		GuiControl, Hide, G11glow
	
    If (CurrControl <> PrevControl and not InStr(CurrControl, " "))
    {
        ToolTip  ; Turn off any previous tooltip.
        SetTimer, DisplayToolTip, 1000
        PrevControl := CurrControl
    }
    return

    DisplayToolTip:
    SetTimer, DisplayToolTip, Off
    ToolTip %CurrControl%  ; The leading percent sign tell it to use an expression.
    SetTimer, RemoveToolTip, 3000
    return

    RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip
    return
}

UImove:
	PostMessage, 0xA1, 2,,, A
Return

#m::
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	t := !t
	If (t = "1") {
		Gui, Hide
	}
	Else {
		Gui, Show, w800 h600, Mouse Options
	}
Return

TriggerLeftB:
	#IfWinActive, Mouse Options
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	l := !l
	If (l = "1") {
		GuiControl, Show, LeftB
		GuiControl, Show, LeftBLine
		GuiControl, Show, LeftBglow
	}
	Else {
		GuiControl, Hide, LeftB
		GuiControl, Hide, LeftBLine
		GuiControl, Hide, LeftBglow
	}
Return

TriggerRightB:
	#IfWinActive, Mouse Options
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	r := !r
	If (r = "1") {
		GuiControl, Show, RightB
		GuiControl, Show, RightBLine
		GuiControl, Show, RightBglow
		}
		Else {
		GuiControl, Hide, RightB
		GuiControl, Hide, RightBLine
		GuiControl, Hide, RightBglow
		}
Return

TriggerWheel:		; Testing hide feature
	#IfWinActive, Mouse Options
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	wc := !wc
	If (wc = "1") {
		GuiControl, Show, WheelC
		GuiControl, Show, WheelCLine
		GuiControl, Show, WheelCLineU
		GuiControl, Show, WheelBackground
		GuiControl, Show, WheelCglow
		GuiControl, Show, WheelSU
		GuiControl, Show, WheelSD
		GuiControl, Show, WheelSL
		GuiControl, Show, WheelSR
		GuiControl, Show, WSUT
		GuiControl, Show, WSDT
		GuiControl, Show, WCT
		GuiControl, Show, WSLT
		GuiControl, Show, WSRT
		}
		Else {
		GuiControl, Hide, WheelC
		GuiControl, Hide, WheelCLine
		GuiControl, Hide, WheelCLineU
		GuiControl, Hide, WheelBackground
		GuiControl, Hide, WheelCglow
		GuiControl, Hide, WheelSU
		GuiControl, Hide, WheelSD
		GuiControl, Hide, WheelSL
		GuiControl, Hide, WheelSR
		GuiControl, Hide, WSUT
		GuiControl, Hide, WSDT
		GuiControl, Hide, WCT
		GuiControl, Hide, WSLT
		GuiControl, Hide, WSRT
		}
Return

TriggerBack:		; Testing hide feature
	#IfWinActive, Mouse Options
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	b6 := !b6
	If (b6 = "1") {
		GuiControl, Show, G6
		GuiControl, Show, G6Line
		GuiControl, Show, G6glow
		GuiControl, Show, G4
		GuiControl, Show, G4Line
		GuiControl, Show, G4glow
		}
		Else {
		GuiControl, Hide, G6
		GuiControl, Hide, G6Line
		GuiControl, Hide, G6glow
		GuiControl, Hide, G4
		GuiControl, Hide, G4Line
		GuiControl, Hide, G4glow
		}
Return

TriggerForward:		; Testing hide feature
	#IfWinActive, Mouse Options
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	b7 := !b7
	If (b7 = "1") {
		GuiControl, Show, G7
		GuiControl, Show, G7Line
		GuiControl, Show, G7glow
		GuiControl, Show, G5
		GuiControl, Show, G5Line
		GuiControl, Show, G5glow
		}
		Else {
		GuiControl, Hide, G7
		GuiControl, Hide, G7Line
		GuiControl, Hide, G7glow
		GuiControl, Hide, G5
		GuiControl, Hide, G5Line
		GuiControl, Hide, G5glow
		}
Return

TriggerG8:		; Testing hide feature
	#IfWinActive, Mouse Options
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	b8 := !b8
	If (b8 = "1") {
		GuiControl, Show, G8
		GuiControl, Show, G8Line
		GuiControl, Show, G8glow
		}
		Else {
		GuiControl, Hide, G8
		GuiControl, Hide, G8Line
		GuiControl, Hide, G8glow
		}
Return

TriggerG9:		; Testing hide feature
	#IfWinActive, Mouse Options
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	g9 := !g9
	If (g9 = "1") {
		GuiControl, Show, G9
		GuiControl, Show, G9Line
		GuiControl, Show, G9glow
		}
		Else {
		GuiControl, Hide, G9
		GuiControl, Hide, G9Line
		GuiControl, Hide, G9glow
		}
Return

TriggerG10:		; Testing hide feature
	#IfWinActive, Mouse Options
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	g10 := !g10
	If (g10 = "1") {
		GuiControl, Show, G10
		GuiControl, Show, G10Line
		GuiControl, Show, G10glow
		}
		Else {
		GuiControl, Hide, G10
		GuiControl, Hide, G10Line
		GuiControl, Hide, G10glow
		}
Return

TriggerG11:
	#IfWinActive, Mouse Options
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	g11 := !g11
	If (g11 = "1") {
		GuiControl, Show, G11
		GuiControl, Show, G11Line
		GuiControl, Show, G11glow
		}
		Else {
		GuiControl, Hide, G11
		GuiControl, Hide, G11Line
		GuiControl, Hide, G11glow
		}
Return

mrReload:	; Reload script
	reload
Return

GuiClose:
	ExitApp
Return

GuiEscape:
	ExitApp
Return
