Menu,tray,NoStandard
Menu,tray,add,��ʾ����,ShowWindow
Menu,tray,add,�˳�,GuiClose
Menu,tray,Default,��ʾ����
Gui, Add, Edit, x6 y32 w35 h20
Gui, Add, UpDown, x6 y32 w35 h20 vH Range0-23 Wrap,%A_Hour%
Gui, Add, Edit, x66 y32 w35 h20
Gui, Add, UpDown, x66 y32 w35 h20 vM Range0-59 Wrap,%A_Min%
Gui, Add, Edit, x126 y32 w35 h20
Gui, Add, UpDown, x126 y32 w35 h20 vS Range0-59 Wrap,%A_Sec%
Gui, Font, S12 CDefault, ����
Gui, Add, Text, x46 y32 w20 h20 , ʱ
Gui, Add, Text, x106 y32 w20 h20 , ��
Gui, Add, Text, x166 y32 w20 h20 , ��
Gui, Font, S14 CDefault , ����
Gui, Add, Text, x6 y6 w190 h20 , ����ʱ���趨:
Gui, Font
Gui, Add, Button, x6 y60 w190 h30 ,ȷ��
Gui, Show,w204 h95,AHKС����
Return
GuiClose:
ExitApp
Return
Buttonȷ��:
Gui,Submit
MsgBox ʱ���趨�� %h%�� %m%�� %s%��
ss:=S-A_Sec
mm:=M-A_Min
hh:=H-A_Hour
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
	SoundPlay d:\music\�����Ϸ������.wma
	MsgBox 262208, ����, ������!!,10
	IfMsgBox Timeout
	Continue
	Else
	Break
}

ExitApp
