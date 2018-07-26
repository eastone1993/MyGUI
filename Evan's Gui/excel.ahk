;---------------EXCEL FUNCTIONS------------------------------------------------

;https://autohotkey.com/board/topic/29154-ms-office-automation-functions-via-com-thanks-sean/
;https://autohotkey.com/board/topic/52206-getting-data-from-excel/
;https://support.office.com/en-us/article/keyboard-shortcuts-in-excel-for-windows-1798d9d5-842a-42b8-9c99-9b7213f0040f?ui=en-US&rs=en-US&ad=US
;http://www.asap-utilities.com/excel-tips-shortcuts.php

#Persistent
#SingleInstance, force 
;FILE SCRUBBING
^+q::
Send ^a
Send ^c
Send +{F11}
Send ^!v
Send v
Send {enter}
Return

;FILE SAVING
/*ALT+F, I, E, F12, TAB, DOWNARROW*7, ENTER
*/
^+w::
Send !f
Send i
Send e
sleep, 500
Send {Esc}{Esc}{Esc}
sleep, 500
Send {F12}
Send {TAB}
Send c
Send +{TAB}
Return

;ALL IN ONE SCRUBBING AND SAVING FUNCTION ---------------------------------------------------------------------
^+l::
;enables editing 
Send !f
sleep, 250
Send i
sleep, 250
Send e
sleep, 250

;resets to main window 
Send {Esc}{Esc}{Esc}
sleep, 500

;scrubbing block 
Send ^{Home}
sleep, 500
Send, ^+{End}
sleep, 250
Send ^c
sleep, 250
Send +{F11}
sleep, 250
Send ^!v
sleep, 250
Send v
Send {enter}
sleep, 250

;sorts file to eliminate blank lines 
Send ^{Home}
sleep, 250
Send, {down}
sleep, 250
Send ^+{End}
sleep, 250
Send {alt}
sleep, 250
Send a 
sleep, 250
send sa 
sleep, 250

;saving block 
Send {F12}
sleep, 1000
Send {F6}
sleep, 1000
Send d ;resets file type
Send c ;sets file type to csv 
Send !d ;moves to address bar 
sleep, 250
Send C:\Users\estone\Desktop\Rosters ;file path
Send, {enter}
sleep, 250
Send {Tab}{Tab}{Tab}{Tab}{Tab}{Tab} ;navigates back to filename bar 
;MsgBox, Done
Return
;-------------------------------------------------------------------------------------------------------------------

;FILE SAVING, SCRUBBING, AND FORMATTING 
^+o::
;enables editing 
Send !f
sleep, 250
Send i
sleep, 250
Send e
sleep, 250

;resets to main window 
Send {Esc}{Esc}{Esc}
sleep, 500

;scrubbing block 
Send ^{Home}
sleep, 500
Send, ^+{End}
sleep, 250
Send ^c
sleep, 250
Send +{F11}
sleep, 250
Send ^!v
sleep, 250
Send v
Send {enter}
sleep, 250

;sorts file to eliminate blank lines 
Send ^{Home}
sleep, 250
Send, {down}
sleep, 250
Send ^+{End}
sleep, 250
Send {alt}
sleep, 250
Send a 
sleep, 250
Send sa 
sleep, 250

Send ^{Home}
sleep, 500
return 


^+j::
;values must be declared as 0 intially for ahk 
;counts number of not-empty cells and starts a new cell count in next column when comes across an empty cell 
;makes sure that each column has the same column count 
var0 := 0 ;column index, appends up to 4 to ensure that all 4 columns exist
var1 := 0 
var2 := 0
var3 := 0
var4 := 0

Send ^{Home} ;resets cursor to home cell

;main loop runs through each column until first name, last name, grade, and Id are found 
;goes through each column and checks for blank cells
Loop 
{
	Clipboard =
	Send ^c
	ClipWait
	contents := Clipboard
	contentsTrimmed = %contents%
	IfInString, contentsTrimmed, first  ;FIRST NAME
	{
		Loop 
		{
			var0 := (var0+1)
			Clipboard =
			Send ^c
			ClipWait
			contents := Clipboard
			contentsTrimmed = %contents%
			Length := StrLen(contentsTrimmed)
			if (Length=2) ;empty excel cells have string length of 2 
			{
				Send {Up}
				sleep, 100
				Send {End}{Up}
				sleep, 100
				Send {Right}
				break
			}

			else 
			{
				var1 := (var1+1)
				Send {Down} 
			}
			
		}

	}

	else IfInString, contentsTrimmed, last  ;LAST NAME
	{
		Loop 
		{
			var0 := (var0+1)
			Clipboard =
			Send ^c
			ClipWait
			contents := Clipboard
			contentsTrimmed = %contents%
			Length := StrLen(contentsTrimmed)
			if (Length=2)
			{
				Send {Up}
				sleep, 100
				Send {End}{Up}
				sleep, 100
				Send {Right}
				break
			}

			else 
			{
				var2 := (var2+1)
				Send {Down} 
			}
			
		}

	}

	else IfInString, contentsTrimmed, grade ;GRADE LEVEL 
	{
		Loop 
		{
			var0 := (var0+1)
			Clipboard =
			Send ^c
			ClipWait
			contents := Clipboard
			contentsTrimmed = %contents%
			Length := StrLen(contentsTrimmed)
			if (Length=2)
			{
				Send {Up}
				sleep, 100
				Send {End}{Up}
				sleep, 100
				Send {Right}
				break
			}

			else 
			{
				var3 := (var3+1)
				Send {Down} 
			}
			
		}

	}

	else IfInString, contentsTrimmed, id ;STUDENT ID 
	{
		Loop 
		{
			var0 := (var0+1)
			Clipboard =
			Send ^c
			ClipWait
			contents := Clipboard
			contentsTrimmed = %contents%
			Length := StrLen(contentsTrimmed)
			if (Length=2)
			{
				Send {Up}
				sleep, 100
				Send {End}{Up}
				sleep, 100
				Send {Right}
				break
			}

			else 
			{
				var4 := (var4+1)
				Send {Down} 
			}
			
		}

	}
	else 
	{
		IfEqual, var0, 4
		{
			break
		}
		else 
		{
			Send {Right}
		}
	}
}
/*
if (var1=var2) and (var2=var3) and (var3=var4)
{
	MsgBox, "File ready for upload"
}
else 
{
	MsgBox, "Student Data is missing"
}
*/

/*
;saving block 
Send {F12}
sleep, 250
Send {F6}
sleep, 250
Send d ;resets file type
Send c ;sets file type to csv 
Send !d ;moves to address bar 
sleep, 250
Send C:\Users\estone\Desktop\Rosters ;file path
Send, {enter}
sleep, 250
Send {Tab}{Tab}{Tab}{Tab}{Tab}{Tab} ;navigates back to filename bar 
MsgBox, Done
*/
Return



;COM OBJECTS - https://autohotkey.com/board/topic/69033-basic-ahk-l-com-tutorial-for-excel/
/*
^+e::
Xl := ComObjCreate("Excel.Application") ;create a handle to a new excel application
Xl.Visible := True ;by default excel sheets are invisible
Xl.Workbooks.Add ;add a new workbook


^+r::
x1 :=ComObjActive("Excel.Application") ;creates a handle to your currently active excel sheet
*/



