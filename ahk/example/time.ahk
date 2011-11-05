ss:=S-9
mm:=M-45
hh:=H-0
If ss<0
{
	ss+=60
	mm--
}
If mm<0
{
	mm+=60
	hh--
}
If hh<0
hh+=24
Timer:=(HH*3600+MM*60+SS)*1000
SetTimer Play,-%Timer%
Return

Return
ShowWindow:
Gui,Show
Return


Play:
Loop
{
	MsgBox 262208, ÄÖÖÓ, µ½µãÀ²!!,10
	IfMsgBox Timeout
	Continue
	Else
	Break
}

ExitApp
