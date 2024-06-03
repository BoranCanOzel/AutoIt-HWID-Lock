#NoTrayIcon
AutoItSetOption("trayiconhide", 1)

Global $fakehwid, $num, $num1
$num = ""
$num1 = ""

#include <WindowsConstants.au3>
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <EditConstants.au3>


MouseMove(MouseGetPos(0), MouseGetPos(1), 1)
#Region ### START Koda GUI section ### Form=
    $form = GUICreate("                                 Convert   $SHOWNhwid   to   $FAKEhwid", 490, 99, -1, -1)
    $inputhwid = GUICtrlCreateInput("", 8, 8, 473, 32, BitOR($gui_ss_default_input, $es_center, $es_readonly))
    GUICtrlSetFont(-1, 15, 400, 0, "MS Sans Serif")
    $paste = GUICtrlCreateButton("Paste", 336, 48, 137, 41)
    GUICtrlSetFont(-1, 15, 400, 0, "MS Sans Serif")
    $convert = GUICtrlCreateButton("Convert", 176, 48, 137, 41)
    GUICtrlSetFont(-1, 15, 400, 0, "MS Sans Serif")
    $copy = GUICtrlCreateButton("Copy", 16, 48, 137, 41)
    GUICtrlSetFont(-1, 15, 400, 0, "MS Sans Serif")
    GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
While 1
    $nmsg = GUIGetMsg()
    Switch $nmsg
        Case $gui_event_close
            Exit
        Case $paste
            GUICtrlSetData($inputhwid, ClipGet())
        Case $convert
            convertshownhwidtofakehwid()
            GUICtrlSetData($inputhwid, $fakehwid)
        Case $copy
            ClipPut(GUICtrlRead($inputhwid))
    EndSwitch
WEnd

Func convertshownhwidtofakehwid()
    $fakehwid = GUICtrlRead($inputhwid)
    Do
        $num = $num + 1
        $fakehwid = StringReplace($fakehwid, "A", "Z")
        $fakehwid = StringReplace($fakehwid, "B", "1")
        $fakehwid = StringReplace($fakehwid, "C", "M")
        $fakehwid = StringReplace($fakehwid, "D", "C")
        $fakehwid = StringReplace($fakehwid, "E", "D")
        $fakehwid = StringReplace($fakehwid, "F", "H")
        $fakehwid = StringReplace($fakehwid, "G", "I")
        $fakehwid = StringReplace($fakehwid, "H", "L")
        $fakehwid = StringReplace($fakehwid, "I", "O")
        $fakehwid = StringReplace($fakehwid, "J", "V")
        $fakehwid = StringReplace($fakehwid, "K", "E")
        $fakehwid = StringReplace($fakehwid, "L", "Y")
        $fakehwid = StringReplace($fakehwid, "M", "U")
        $fakehwid = StringReplace($fakehwid, "N", "A")
        $fakehwid = StringReplace($fakehwid, "O", "7")
        $fakehwid = StringReplace($fakehwid, "P", "2")
        $fakehwid = StringReplace($fakehwid, "Q", "3")
        $fakehwid = StringReplace($fakehwid, "R", "4")
        $fakehwid = StringReplace($fakehwid, "S", "5")
        $fakehwid = StringReplace($fakehwid, "T", "P")
        $fakehwid = StringReplace($fakehwid, "U", "Q")
        $fakehwid = StringReplace($fakehwid, "V", "J")
        $fakehwid = StringReplace($fakehwid, "W", "K")
        $fakehwid = StringReplace($fakehwid, "X", "N")
        $fakehwid = StringReplace($fakehwid, "Y", "9")
        $fakehwid = StringReplace($fakehwid, "Z", "X")
        $fakehwid = StringReplace($fakehwid, "1", "8")
        $fakehwid = StringReplace($fakehwid, "2", "G")
        $fakehwid = StringReplace($fakehwid, "3", "W")
        $fakehwid = StringReplace($fakehwid, "4", "R")
        $fakehwid = StringReplace($fakehwid, "5", "0")
        $fakehwid = StringReplace($fakehwid, "6", "B")
        $fakehwid = StringReplace($fakehwid, "7", "F")
        $fakehwid = StringReplace($fakehwid, "8", "S")
        $fakehwid = StringReplace($fakehwid, "9", "6")
        $fakehwid = StringReplace($fakehwid, "0", "T")
        $fakehwid = StringReplace($fakehwid, "-", "-")
    Until $num = 209
    $num = 0
EndFunc