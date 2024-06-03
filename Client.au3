;~ By  ÅÈÑÇåíã ÚÕÇã ÇáÏíä / ibrahem


#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <String.au3>
#include <Crypt.au3>
#include <Array.au3>

CheckForDebuggers()

Global $FAKEhwid, $FAKEhwid, $REALhwid, $SHOWNhwid, $RealConvertedHwid, $SHOWNtext, $num, $CheckResult, $SAVEDfakeHWID
$num = 0
$REALhwid = _GetHWID()

ConvertRealHwidToFakeHwid()

ConvertFakeHwidToShownHwid()

$SAVEDfakeHWID = $FAKEhwid

$SHOWNtext = $SHOWNhwid

check()

If $CheckResult <> 1 Then LicenceForm()                                         ; If hwid was not found then ask to buy licence


Func LicenceForm()
    MouseMove(MouseGetPos(0), MouseGetPos(1), 1)

    #Region ### START Koda GUI section ###
    $regester = GUICreate("                                                                                Subscribe Form ", 666, 51, -1, -1)
    $InputHWID = GUICtrlCreateInput($SHOWNhwid, 96, 8, 489, 32, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_READONLY))
    GUICtrlSetFont(-1, 15, 400, 0, "MS Sans Serif")
    $buyLicence = GUICtrlCreateButton("Subscribe ", 8, 8, 73, 33)
    GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
    $copyHWID = GUICtrlCreateButton("Copy", 600, 8, 57, 33)
    GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
    GUISetState(@SW_SHOW)
    #EndRegion ### END Koda GUI section ###

    While 1
        $nMsg = GUIGetMsg()
        Switch $nMsg
            Case $GUI_EVENT_CLOSE
                Exit

            Case $copyHWID
                ClipPut($SHOWNtext)

            Case $buyLicence
			    MsgBox(0, 'Activation', 'Contact PythonP#0001');How  users can buy licence.. Ex:Shellexecute("your FB page")..or MsgBox(0,"my phone number", "phone number") ; buy licence action ....etc.

        EndSwitch
    WEnd


EndFunc   ;==>LicenceForm

Func check()

    Do
        Call("SearchForHwid")
        If $FAKEhwid = $FAKEhwid[$num] Then MsgBox(0, "", "done")
        $num = $num + 1

        If $FAKEhwid[$num] = "finish" Then ExitLoop
		   ;MsgBox(1, 'wrong hwid6 öncesi', 'testing')
        If $SAVEDfakeHWID = $FAKEhwid[$num] Then
            ; What happens (after hwid is found / if th user has licence)
			MsgBox(1, 'wrong hwid6 öncesi', 'torunum allah olmuş')
            $CheckResult = 1
            ExitLoop
        EndIf
    Until $FAKEhwid = "finsh"

EndFunc   ;==>check

Func SearchForHwid()

    $Source = BinaryToString(InetRead('https://example.com/', 1));(((((((((((((((((((((((((((link of raw online hwids list)))))))))))))))))))))))))

    $reader = _StringBetween($Source, '{', '}')

    For $a In $reader
        $FAKEhwid = _StringBetween($Source, '{', '}')
        ConsoleWrite($FAKEhwid[$num] & @CRLF)
    Next
EndFunc   ;==>SearchForHwid

Func _GetHWID()
    Local $aDrives = DriveGetDrive('FIXED'), $sOutput = ''
    If @error = 0 Then
        For $i = 1 To $aDrives[0]
            $sOutput &= DriveGetSerial($aDrives[$i])
        Next
    EndIf
    $aDrives = DriveGetDrive('CDROM')
    If @error = 0 Then
        For $i = 1 To $aDrives[0]
            $sOutput &= DriveGetSerial($aDrives[$i])
        Next
    EndIf
    Local $aMemory = MemGetStats()
    $sOutput &= @OSVersion & @OSBuild & @OSArch & @CPUArch & @KBLayout & $aMemory[1]
    $aMemory = 0
    $sOutput = StringStripWS($sOutput, 8)
    Local $sHash = StringTrimLeft(_Crypt_HashData($sOutput, $CALG_MD5), 2)
    Return StringMid($sHash, 1, 8) & '-' & StringMid($sHash, 9, 4) & '-' & StringMid($sHash, 13, 4) & '-' & StringMid($sHash, 17, 4) & '-' & StringMid($sHash, 21, 12)
EndFunc   ;==>_GetHWID

Func ConvertRealHwidToFakeHwid()
    $FAKEhwid = $REALhwid
    $FAKEhwid = StringReplace($FAKEhwid, "A", "Z")
    $FAKEhwid = StringReplace($FAKEhwid, "B", "1")
    $FAKEhwid = StringReplace($FAKEhwid, "C", "M")
    $FAKEhwid = StringReplace($FAKEhwid, "D", "C")
    $FAKEhwid = StringReplace($FAKEhwid, "E", "D")
    $FAKEhwid = StringReplace($FAKEhwid, "F", "H")
    $FAKEhwid = StringReplace($FAKEhwid, "G", "I")
    $FAKEhwid = StringReplace($FAKEhwid, "H", "L")
    $FAKEhwid = StringReplace($FAKEhwid, "I", "O")
    $FAKEhwid = StringReplace($FAKEhwid, "J", "V")
    $FAKEhwid = StringReplace($FAKEhwid, "K", "E")
    $FAKEhwid = StringReplace($FAKEhwid, "L", "Y")
    $FAKEhwid = StringReplace($FAKEhwid, "M", "U")
    $FAKEhwid = StringReplace($FAKEhwid, "N", "A")
    $FAKEhwid = StringReplace($FAKEhwid, "O", "7")
    $FAKEhwid = StringReplace($FAKEhwid, "P", "2")
    $FAKEhwid = StringReplace($FAKEhwid, "Q", "3")
    $FAKEhwid = StringReplace($FAKEhwid, "R", "4")
    $FAKEhwid = StringReplace($FAKEhwid, "S", "5")
    $FAKEhwid = StringReplace($FAKEhwid, "T", "P")
    $FAKEhwid = StringReplace($FAKEhwid, "U", "Q")
    $FAKEhwid = StringReplace($FAKEhwid, "V", "J")
    $FAKEhwid = StringReplace($FAKEhwid, "W", "K")
    $FAKEhwid = StringReplace($FAKEhwid, "X", "N")
    $FAKEhwid = StringReplace($FAKEhwid, "Y", "9")
    $FAKEhwid = StringReplace($FAKEhwid, "Z", "X")
    $FAKEhwid = StringReplace($FAKEhwid, "1", "8")
    $FAKEhwid = StringReplace($FAKEhwid, "2", "G")
    $FAKEhwid = StringReplace($FAKEhwid, "3", "W")
    $FAKEhwid = StringReplace($FAKEhwid, "4", "R")
    $FAKEhwid = StringReplace($FAKEhwid, "5", "0")
    $FAKEhwid = StringReplace($FAKEhwid, "6", "B")
    $FAKEhwid = StringReplace($FAKEhwid, "7", "F")
    $FAKEhwid = StringReplace($FAKEhwid, "8", "S")
    $FAKEhwid = StringReplace($FAKEhwid, "9", "6")
    $FAKEhwid = StringReplace($FAKEhwid, "0", "T")
    $FAKEhwid = StringReplace($FAKEhwid, "-", "-")
EndFunc   ;==>ConvertRealHwidToFakeHwid

Func ConvertFakeHwidToShownHwid()
    $SHOWNhwid = $FAKEhwid
    $SHOWNhwid = StringReplace($SHOWNhwid, "A", "Z")
    $SHOWNhwid = StringReplace($SHOWNhwid, "B", "1")
    $SHOWNhwid = StringReplace($SHOWNhwid, "C", "M")
    $SHOWNhwid = StringReplace($SHOWNhwid, "D", "C")
    $SHOWNhwid = StringReplace($SHOWNhwid, "E", "D")
    $SHOWNhwid = StringReplace($SHOWNhwid, "F", "H")
    $SHOWNhwid = StringReplace($SHOWNhwid, "G", "I")
    $SHOWNhwid = StringReplace($SHOWNhwid, "H", "L")
    $SHOWNhwid = StringReplace($SHOWNhwid, "I", "O")
    $SHOWNhwid = StringReplace($SHOWNhwid, "J", "V")
    $SHOWNhwid = StringReplace($SHOWNhwid, "K", "E")
    $SHOWNhwid = StringReplace($SHOWNhwid, "L", "Y")
    $SHOWNhwid = StringReplace($SHOWNhwid, "M", "U")
    $SHOWNhwid = StringReplace($SHOWNhwid, "N", "A")
    $SHOWNhwid = StringReplace($SHOWNhwid, "O", "7")
    $SHOWNhwid = StringReplace($SHOWNhwid, "P", "2")
    $SHOWNhwid = StringReplace($SHOWNhwid, "Q", "3")
    $SHOWNhwid = StringReplace($SHOWNhwid, "R", "4")
    $SHOWNhwid = StringReplace($SHOWNhwid, "S", "5")
    $SHOWNhwid = StringReplace($SHOWNhwid, "T", "P")
    $SHOWNhwid = StringReplace($SHOWNhwid, "U", "Q")
    $SHOWNhwid = StringReplace($SHOWNhwid, "V", "J")
    $SHOWNhwid = StringReplace($SHOWNhwid, "W", "K")
    $SHOWNhwid = StringReplace($SHOWNhwid, "X", "N")
    $SHOWNhwid = StringReplace($SHOWNhwid, "Y", "9")
    $SHOWNhwid = StringReplace($SHOWNhwid, "Z", "X")
    $SHOWNhwid = StringReplace($SHOWNhwid, "1", "8")
    $SHOWNhwid = StringReplace($SHOWNhwid, "2", "G")
    $SHOWNhwid = StringReplace($SHOWNhwid, "3", "W")
    $SHOWNhwid = StringReplace($SHOWNhwid, "4", "R")
    $SHOWNhwid = StringReplace($SHOWNhwid, "5", "0")
    $SHOWNhwid = StringReplace($SHOWNhwid, "6", "B")
    $SHOWNhwid = StringReplace($SHOWNhwid, "7", "F")
    $SHOWNhwid = StringReplace($SHOWNhwid, "8", "S")
    $SHOWNhwid = StringReplace($SHOWNhwid, "9", "6")
    $SHOWNhwid = StringReplace($SHOWNhwid, "0", "T")
    $SHOWNhwid = StringReplace($SHOWNhwid, "-", "-")
EndFunc   ;==>ConvertFakeHwidToShownHwid


Func CheckForDebuggers()  ; this func closes some known proxy debuggers


    ; Charles
    If WinExists("Charles") Then WinClose("Charles")
    If ProcessExists("Charles.exe") Then ProcessClose("Charles")

    ; Fiddler
    If WinExists("Fiddler") Then WinClose("Fiddler")
    If ProcessExists("Fiddler.exe") Then ProcessClose("Fiddler.exe")

    ; Wireshark
    If ProcessExists("Wireshark.exe") Then ProcessClose("Wireshark.exe")
    If WinExists("Wireshark") Then WinClose("Wireshark")

    ; OllyDbg
    If WinExists("OllyDbg") Then WinClose("OllyDbg")
    If ProcessExists("OLLYDBG.EXE") Then ProcessClose("OLLYDBG.EXE")

    ; just expectation
    If WinExists("Developer") Then WinClose("Developer")
    If WinExists("debug") Then WinClose("debug")
    If WinExists("debugger") Then WinClose("debugger")
    If WinExists("debuger") Then WinClose("debuger")

EndFunc   ;==>CheckForDebuggers