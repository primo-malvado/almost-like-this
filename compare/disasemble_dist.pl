use CPU::Z80::Disassembler;
$dis = CPU::Z80::Disassembler->new;

$dis->memory->load_file("dist/01.bin", 0x6000);

$dis->code(0x6000, "start");
 

$dis->write_asm;
