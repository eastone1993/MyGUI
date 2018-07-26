;----------------------------------- MY SCRIPT -------------------------------------------------------------------------------------------------------------
#Persistent
#SingleInstance, force 
#IfWinNotExist, `%A_WorkingDir`%\testfile.ahk 
{
    Run, %A_WorkingDir%\testfile.ahk
} 

OnExit("ExitFunc")

ExitFunc()
{
    DetectHiddenWindows, On 
    WinClose, %A_WorkingDir%\testfile.ahk ahk_class AutoHotkey
}

;C:\Users\estone\Desktop\AHK\MyScripts\MyScript.ahk.ahk 

;PUT HOTSTRINGS HERE
::xsig::Sincerely,{enter}{enter}Evan Stone{enter}IXL Account Services{enter}{enter}Mailing Address:{enter}IXL Learning{enter}777 Mariners Island Blvd., Suite 600{enter}San Mateo, CA 94404 USA{enter}{enter}Toll-free 1.855.255.8800 | Direct 1.650.372.4300 | Fax: 1.650.372.4301
::lmk::Please let me know if you have any questions.
::tfyr::Thanks for your reply.
::tfcu::Thanks for contacting us.
::ihte::I hope this e-mail finds you well.
::tro::Thanks for reaching out{!}
::tgb::Thanks for getting back to me{!}
::gq::Great question{!}
::xur:: We have a new tool available in your administrator account  to ensure security and privacy for your data. You can simply click the  “Upload roster files” link found under the Account Management tab to access a secure upload page for all of your student and teacher information.
::ixlfdos::My name is Evan, I'll be your account services coordinator moving forward. I'm reaching out because I've noticed you haven't uploaded any students to your roster yet. Is there anything I can do to help get your account set up?
::xsi::Please send me a complete student list with the following student information in separate columns of an Excel spreadsheet:{enter}{enter}    -First name{enter}    -Last name{enter}    -Student ID number{enter}    -Grade level{enter}    -Teacher last name or teacher email{enter}{enter}Note that student's first name, last name, student ID, and grade level are required. 
::fsu::Your account currently has fall setup enabled. IXL’s fall setup tool will help automatically promote students to the next grade level and clear class rosters two weeks prior to your first day of school, on [date]. Please advise if you would like this tool to remain enabled, or I am happy to assist you if you would like to have it turned off. 
::ifhb::I look forward to hearing back from you{!}
::ilfw::I look forward to working with you{!}
::yrsa::Your roster has been successfully added. 
::ysbr::Your student has been restored.
::orfdos::My name is Evan, I'll be your account services coordinator moving forward. I'm reaching out because I've noticed you don't have your school's first day of classes listed on your account. This information is important for our internal systems. I look forward to hearing back from you{!} 
::ccadmin::I have copied your IXL administrator in this email for reference. 
::bbb::Teach was a shrewd and calculating leader who spurned the use of force, relying instead on his fearsome image to elicit the response that he desired from those whom he robbed. Contrary to the modern-day picture of the traditional tyrannical pirate, he commanded his vessels with the consent of their crews and there is no known account of his ever having harmed or murdered those whom he held captive. He was romanticized after his death and became the inspiration for an archetypal pirate in works of fiction across many genres.
::xchkin::I'm just reaching out to check-in on how your IXL account set-up is going?
::xecom::My name is Evan, I am your IXL Account Coordinator. I'm not sure if you are receiving my emails. Is this the proper e-mail to communicate with you? 
::xevan::My name is Evan, I am your school's IXL Account Coordinator. 
::xcov::My name is Evan, I am covering for Gabriella today. 
::xpswd::I've sent you a password reset link to your e-mail. Let me know if you don't see it.
::xnewroster::please consult the following guide for uploading your new roster: https://www.ixl.com/userguides/IXLQuickStart_UploadRoster.pdf


;spellcorrect
:*?:signin::sign-in
:*?:sign in::sign-in 
:*?:recieve::receive 
::setup::set-up
::checkin::check-in
:*?:email::e-mail
:*?:seperate::separate
:*?:reccommend::recommend 
::ixl::IXL 
::teh::the 
::managment::management 
:*?:neccessary::necessary
:*:alot::a lot 
::can not::cannot 
::math::Math 
::ela::ELA
::science::Science 
::social studies::Social Studies 
:?*:login::sign-in
;date function 
:R*?:ddd::
FormatTime, CurrentDateTime,, MM/dd/yyyy
SendInput %CurrentDateTime% + ES--------------------------------------------------------------------------{enter}{enter}{enter}{enter}{Up}{Up}
Return

;eric's requested hotstrings 
::qssr::https://www.ixl.com/userguides/IXLQuickStart_SiteRoster.pdf 
::afaq::https://www.ixl.com/help-center/School-administrators/665924
::aqsg::https://www.ixl.com/userguides/IXLQuickStart_Administrator.pdf
:*?:xfileupload::https://www.ixl.com/admin/upload-roster

;----------------------------------- E-MAIL TEMPLATES -------------------------------------------------------------------------------------------------------------
;3.5 ACCOUNT ON HOLD
::xhold::I hope this e-mail finds you well. I wanted to check-in and see if you had any questions regarding the information I need to create accounts for your students. Since we have not received a student list, your account has automatically gone on hold. Once I receive your list and create student accounts, the hold on your account will be lifted, and your students will be able to practice right away{!}{Enter}{Enter} I look forward to hearing from you and helping you get started with IXL{!}
::xwelcome::
(
Welcome to IXL! My name is Evan, I am your school's IXL Account Coordinator. I will be assisting you in getting your students and teachers started with the program. 

To get started, using an Excel spreadsheet, please compile a roster with the following information in separate columns:

    - First name
    - Last name
    - Student ID number
    - Grade level
    - School (if applicable)
    - Student or parent email (recommended)
    - Teacher name
    - Teacher email

The last two columns will allow me to create teacher accounts and class rosters right away. If a student is associated with more than one teacher, please list each additional teacher in a separate column. 

If a teacher has a trial account, please exclude them from the teacher list. I will send instructions on how to merge their trial account once the subscription is activated. 

Once the file is ready, please submit it to our secure uploading page using the following link: https://www.ixl.com/admin/upload-roster-files

I look forward to hearing from you and helping you get started with IXL!

    )
;----------------------------------- AHK CODING SCRIPTS -------------------------------------------------------------------------------------------------------------
:*:x;::;-----------------------------------  -------------------------------------------------------------------------------------------------------------{ctrl}{Left 110}
:*:xtempheader::
(

Name: <FIRSTNAME> <LASTNAME>
Username: <USERNAME>
Initials: <INITIALS> 
Senior Specialist/Coordinator: <SENIORSPECIALIST>
Roster File Path: C:\Users\<USERNAME>\Desktop\Rosters

    )
:*:xspecheader::
(

Name: <FIRSTNAME> <LASTNAME>
Username: <USERNAME>
Initials: <INITIALS> 
Assistant: <ASSISTANT>
Roster File Path: C:\Users\<USERNAME>\Desktop\Rosters

    )

:*:x/::/*{enter}{enter}*/{Up}

;----------------------------------- HTML CODE -------------------------------------------------------------------------------------------------------------
:?*:xhtml::<{!}DOCTYPE html>
:*?:<div::<div></div>{Left 6}
:*?:<h1::<h1></h1>{Left 5} 
:*?:<h2::<h2></h2>{Left 5}
:*?:<h3::<h3></h3>{Left 5}
:*?:<h4::<h4></h4>{Left 5}
:?*:<p::<p></p>{Left 4}
:?*:<ul::<ul></ul>{Left 5}
:?*:<li>::<li></li>{Left 5}
:?*:<ol::<ol></ol>{Left 5}
:?*:<html::<html>{Enter 2}</html>{Up 1}
:?*:<head::<head>{Enter 2}</head>{Up 1}
:?*:<title::<title></title>{Left 8}
:?*:<style::<style></style>{Left 8}

:?*:<a href::<a href="" target=""></a>{Left 16}
:?*:<img src::<img src="" />{Left 4}
:?*:<video::<video src="" width="" height=""></video>{Left 29}
;----------------------------------- EXCEL FUNCTIONS -------------------------------------------------------------------------------------------------------------

;FILE SCRUBBING
^+q::
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
sleep, 500

Return

;FILE SAVING
/*ALT+F, I, E, F12, TAB, DOWNARROW*7, ENTER
*/
^+w::
Send !f
Send i
Send e
sleep, 50
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
sleep, 500

;saving block 
Send {F12}
sleep, 500
Send {Esc}
sleep, 250
Send {F12}
sleep, 500
Send {F4}
Send {F6}{F6}{F6}{F6}{F6}
sleep, 500
Send d ;resets file type
Send c ;sets file type to csv 
Send !d ;moves to address bar 
sleep, 250
Send ^a
sleep, 250
Send %A_Desktop%\Rosters ;file path
Send, {enter}
sleep, 250
Send {Tab}{Tab}{Tab}{Tab}{Tab}{Tab} ;navigates back to filename bar 
;MsgBox, Done
Return
;------------------SEARCH FUNCTIONS--------------------------------------------

;search google
^+f::
Clipboard = 
Send ^c
ClipWait
contents := Clipboard
winactivate ahk_exe chrome.exe
Send ^t
sleep, 250
Send, ^v
Send, {enter}
Return

^+e:: 
Clipboard =
Send ^c
ClipWait
contents := Clipboard
contentsTrimmed = %contents%
Send, ^t
var1 := "https://ixl.my.salesforce.com/_ui/search/ui/UnifiedSearchResults?searchType=2&sen=0JZ&sen=001&sen=02s&sen=068&sen=003&sen=00T&sen=00U&sen=005&sen=500&sen=00O&str=" . contentsTrimmed
var2 := var1 . "&isdtp=vw&isWsVw=true&nonce=02541659de9dde0d96e44d154840e14be6f2bb3fcc1022859c569e3e55629581&sfdcIFrameOrigin=https%3A%2F%2Fixl.my.salesforce.com"
ClipWait
Clipboard := var2
sleep, 500 ;wait for page to load
Send, ^v
Send, {enter}
Clipboard := contentsTrimmed 
return 
/*
Ctrl+Shift+S EMAIL, ACCOUNT NUMBER, OR CASE NUMBER
EMAIL: Searches Quia, SubMan, and SalesForce
ACC#: Searches SubMan and salesforce
Case#: Searches SalesForce
*/
^+s:: 
Clipboard =
Send ^c
ClipWait
contents := Clipboard
contentsTrimmed = %contents%
if RegExMatch(contentsTrimmed, "[\w-_.]+@(?:\w+(?::\d+)?\.){1,3}(?:\w+\.?){1,2}", email) {
    ;QUIA SEARCH
    Run, "chrome.exe" ; Creates new instance of Chrome - comment out LINE 114 if you wish to use this code
    winactivate ahk_exe chrome.exe
;    Send, ^t
    Variable := "https://secure.quia.com/servlets/quia.internal.userInfo.UserInfo?logicModule=1&email=" . email
    Clipboard := Variable
    Send, ^v
    Send, {enter}
    Clipboard := email

    ;SALESFORCE SEARCH
    Send, ^t
    var1 := "https://ixl.my.salesforce.com/_ui/search/ui/UnifiedSearchResults?searchType=2&sen=0JZ&sen=001&sen=02s&sen=068&sen=003&sen=00T&sen=00U&sen=005&sen=500&sen=00O&str=" . email
    var2 := var1 . "&isdtp=vw&isWsVw=true&nonce=02541659de9dde0d96e44d154840e14be6f2bb3fcc1022859c569e3e55629581&sfdcIFrameOrigin=https%3A%2F%2Fixl.my.salesforce.com"
    ClipWait
    Clipboard := var2
    sleep, 500 ;wait for page to load
    Send, ^v
    Send, {enter}
    Clipboard := email

    ;SUBMANAGER SEARCH
    var3 := Clipboard
    Send, ^t
    Clipboard := "https://secure.quia.com/actions/subManager/search/sub"
    Send, ^v
    Send, {enter}
    sleep, 1000 ;wait for page to load
    Send {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab} ;tab down for the win
    Clipboard := var3
    Send, ^v
    Send, {enter}
   
    ;sends the screen to the right 
    sleep, 500
    Send, #+{Right} 
    ;Send #{Right}

} else {
    Length := StrLen(contentsTrimmed)
    if (Length=8){
        ;SALESFORCE SEARCH
        winactivate ahk_exe chrome.exe
        Send, ^t
        var1 := "https://ixl.my.salesforce.com/_ui/search/ui/UnifiedSearchResults?searchType=2&sen=0JZ&sen=001&sen=02s&sen=068&sen=003&sen=00T&sen=00U&sen=005&sen=500&sen=00O&str=" . contentsTrimmed
        var2 := var1 . "&isdtp=vw&isWsVw=true&nonce=02541659de9dde0d96e44d154840e14be6f2bb3fcc1022859c569e3e55629581&sfdcIFrameOrigin=https%3A%2F%2Fixl.my.salesforce.com"
        ClipWait
        Clipboard := var2
        sleep, 500
        Send, ^v
        Send, {enter}

    } else if (Length>8) { ;account number search WITH preceding notation
        ;SUBMANAGER SEARCH
        winactivate ahk_exe chrome.exe
        StringTrimLeft, NewStr, contentsTrimmed, 4 ;trims off the A##- 
        Send, ^t
        Variable := "https://secure.quia.com/actions/subManager/account/view/" . contentsTrimmed
        ClipWait    
        Clipboard := Variable
        sleep, 500
        Send, ^v
        Send, {enter} 
/*
        ;SALESFORCE SEARCH
        Send, ^t
        var1 := "https://ixl.my.salesforce.com/_ui/search/ui/UnifiedSearchResults?searchType=2&sen=0JZ&sen=001&sen=02s&sen=068&sen=003&sen=00T&sen=00U&sen=005&sen=500&sen=00O&str=" . NewStr
        var2 := var1 . "&isdtp=vw&isWsVw=true&nonce=02541659de9dde0d96e44d154840e14be6f2bb3fcc1022859c569e3e55629581&sfdcIFrameOrigin=https%3A%2F%2Fixl.my.salesforce.com"   
        ClipWait
        Clipboard := var2
        sleep, 500 ;wait for page to load
        Send, ^v
        Send, {enter}
*/
    } else { ;account number search WITHOUT preceding notation
        ;SUBMANAGER SEARCH
        winactivate ahk_exe chrome.exe
        Send, ^t
        Variable := "https://secure.quia.com/actions/subManager/account/view/" . contentsTrimmed
        ClipWait    
        Clipboard := Variable
        sleep, 500
        Send, ^v
        Send, {enter}   
/*
        ;SALESFORCE SEARCH
        Send, ^t
        var1 := "https://ixl.my.salesforce.com/_ui/search/ui/UnifiedSearchResults?searchType=2&sen=0JZ&sen=001&sen=02s&sen=068&sen=003&sen=00T&sen=00U&sen=005&sen=500&sen=00O&str=" . contentsTrimmed
        var2 := var1 . "&isdtp=vw&isWsVw=true&nonce=02541659de9dde0d96e44d154840e14be6f2bb3fcc1022859c569e3e55629581&sfdcIFrameOrigin=https%3A%2F%2Fixl.my.salesforce.com"   
        ClipWait
        Clipboard := var2
        sleep, 500 ;wait for page to load
        Send, ^v
        Send, {enter}
*/  
    }
}

Return



;SHORTCUT SEARCH
^+d::
; Identifies selected text as username or e-mail and searches for account
; Start off empty to allow ClipWait to detect when the text has arrived.
Clipboard =
Send ^c
; Wait for the clipboard to contain text.
ClipWait
contents := Clipboard
contentsTrimmed = %contents%
winactivate ahk_exe chrome.exe
Send, ^t
Variable := "https://secure.quia.com/servlets/quia.internal.userInfo.UserInfo?logicModule=1&email=" . contentsTrimmed
Clipboard := Variable
Send, ^v
Send, {enter}
Clipboard := email
Return
