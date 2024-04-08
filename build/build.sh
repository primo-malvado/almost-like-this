rm dist/*.bin


sjasmplus source/example.asm


bas2tap -a -s"quicks" source/00.bas

mv source/00.tap dist/quicks.tap

taput add -o 24576 -n "QUICK"   dist/01.bin  dist/quicks.tap


sh compare/compare.sh

fuse dist/quicks.tap