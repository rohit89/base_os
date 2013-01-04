An attempt to create a very simple functional OS
Inspired by the reddit post http://www.reddit.com/r/programming/comments/9x15g/programming_thought_experiment_stuck_in_a_room/


To try it out, run

`nasm -f bin boot.asm -o boot.bin`

`dd if=/dev/zero of=floppy.img ibs=1k count=1440`
`dd if=boot.bin of=floppy.img conv=notrunc`

In Virtualbox, select floppy.img to your floppy controller and run
