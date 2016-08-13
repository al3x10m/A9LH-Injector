@echo off

echo [A9LH nand.bin injector]

rd /s /q output

md output

copy /y /v input\new3ds90.firm output\firm0.bin
work\dd if=input/payload_stage1.bin of=output/firm0.bin bs=1 seek=984464 conv=notrunc
echo [FIRM0 done and stage1 injected]

copy /y /v input\new3ds10.firm output\firm1.bin
echo [FIRM1 done]

python work\sector_generator.py input\secret_sector.bin input\otp.bin output\sector.bin
echo [SECTOR done]

fsutil file createnew output\firm0firm1.bin 8388608
work\dd if=output/firm0.bin of=output/firm0firm1.bin conv=notrunc
work\dd if=output/firm1.bin of=output/firm0firm1.bin bs=512 seek=8192 conv=notrunc
echo [FIRM0FIRM1 done]

echo [now injecting...]
work\3DSfat16tool -i nand.bin output\firm0firm1.bin firm0firm1.xorpad

echo [injecting secret sector...]
work\dd if=output/sector.bin of=nand.bin bs=512 seek=150 conv=notrunc

echo [injecting stage2 payload...]
work\dd if=input/payload_stage2.bin of=nand.bin bs=512 seek=376832 conv=notrunc
ren nand.bin nand.a9lh.bin

echo [done]
pause
