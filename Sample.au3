#include "HandleImgSearch.au3"

Const $currntImage   = @ScriptDir & "\current-image.png"
Const $findImageLine = @ScriptDir & "\icon-line.png"

WinMinimizeAll()

_ScreenCapture_Capture($currntImage)

Local $positionMap = _BmpImgSearch($currntImage,$findImageLine)

if Not @error Then
		MouseMove($positionMap[1][0],$positionMap[1][1])
EndIf
