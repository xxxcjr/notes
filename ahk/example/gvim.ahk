SetTitleMatchMode, 2 
;run c:\Program Files\vim\vim72\gvim.exe "d:\temp\df.test"
run c:\Program Files\vim\vim72\gvim.exe
winactivate - GVIM
sleep 1500

send ^{space}
;send :hi clear Normal{enter} ;取消gvim的颜色
;send :hi clear{enter} ;取消gvim的颜色
send :hi Normal guifg=red{enter} ;设定为绿底红字
send ^{space}

winmove - GVIM,,0,310,1024,280
WinSet Style,ON,-0xC00000,- GVIM
WinSet Transparent,190,- GVIM