SetTitleMatchMode, 2 
;run c:\Program Files\vim\vim72\gvim.exe "d:\temp\df.test"
run c:\Program Files\vim\vim72\gvim.exe
winactivate - GVIM
sleep 1500

send ^{space}
;send :hi clear Normal{enter} ;ȡ��gvim����ɫ
;send :hi clear{enter} ;ȡ��gvim����ɫ
send :hi Normal guifg=red{enter} ;�趨Ϊ�̵׺���
send ^{space}

winmove - GVIM,,0,310,1024,280
WinSet Style,ON,-0xC00000,- GVIM
WinSet Transparent,190,- GVIM