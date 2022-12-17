.section .data

tree:
  .asciz "\x1b[32m    /\\\x1b[0m      +-------------+\n\x1b[32m   /\\*\\\x1b[0m     | Made in x64 |\n\x1b[32m  /\\O\\*\\\x1b[0m    | Assembly by |\n\x1b[32m /*/\\/\\/\\\x1b[0m   | sudo200     |\n\x1b[32m/\\*\\/O\\/*\\\x1b[0m  +-------------+\n    \x1b[33m||\n    \x1b[33m||\n\x1b[0m"

.section .text
.globl _start

_start:
  movq $1, %rax     # system call number for write
  movq $1, %rdi     # file descriptor (stdout)
  movq $tree, %rsi  # address of string to print
  movq $213, %rdx    # length of string to print
  syscall

  mov $60, %rax     # system call number for exit
  mov $0, %rdi      # exit code
  syscall

