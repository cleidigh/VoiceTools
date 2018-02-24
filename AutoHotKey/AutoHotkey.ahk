; cleidigh - autohotKey commands 
; Assign these to whatever you want with Dragon

; dragonfly commands example
;        "navigation":                  Key("c-t"),
;        "file pane":                   Key("c-p"),

; Focus on file pane - Windows Explorer, file dialogs

#IfWinActive ahk_class CabinetWClass ; Windows Explorer
    ^p::
        ControlFocus, DirectUIHWND3, A
        SendInput, {Space}
        return
#IfWinActive

; Focus on navigation pane - Windows Explorer, file dialogs

#IfWinActive ahk_class CabinetWClass ; Windows Explorer
    ^t::    
        ControlFocus, SysTreeView321, A
        ;SendInput, {Space}
        return
#IfWinActive

#IfWinActive ahk_class #32770 ; Save
    ^t::    
        ControlFocus, SysTreeView321, A
        ;SendInput, {Space}
        return
#IfWinActive


#IfWinActive ahk_class #32770 ; Windows Explorer
    ^p::
        ControlFocus, DirectUIHWND2, A
        SendInput, {Space}
        return
#IfWinActive


        
+^\::
        Run "C:\Program Files (x86)\Nuance\NaturallySpeaking13\Program\natspeak.exe"
        