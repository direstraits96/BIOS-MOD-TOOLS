del /Q FfsSlp2.bin
del /Q Ffskst.bin
copy /b slphead.bin+slp2bin.bin=FfsSlp2.BIN
copy /b ksthead.bin+keystr.bin+Tail.bin=Ffskst.BIN
FfsEdit.exe FfsSlp2.BIN
FfsEdit.exe Ffskst.BIN