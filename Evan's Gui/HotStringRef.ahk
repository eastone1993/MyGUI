;----------------------------------- HOT STRING REF GUI -------------------------------------------------------------------------------------------------------------
;%A_WorkingDir%\HotStringRefGUI.ahk

#Persistent

Gui, Show, w1410 h970, Hotstring Reference Sheet 
Gui, Add, Picture, w1397 h951, %A_WorkingDir%\Images\xstring ref sheet.png
return

GuiClose:
ExitApp 