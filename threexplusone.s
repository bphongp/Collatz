	;; Bamphiane Annie Phongphouthai bp9qg 11/9/17 threexplusone.s


	global threexplusone
	section .text

threexplusone:
	;; prologue
	xor	rax, rax	;set return to 0
	mov	rdi, [rsp+2]
	cmp	rdi, 1		;if num=0 then done
	je	end		;jump to end
	jmp	recurse
recurse:	
	shr	rdi, 1
	jnc	even
	shr	rdi, 1
	imul	rdi, 3
	add 	rdi, 1
	push	rdi
	call	threexplusone
	inc 	rax
	jmp	end
even:
	push	rdi
	call 	threexplusone
	inc 	rax
	jmp 	end
end:
	ret
	;;nasm -f elf64 -g -o threexplusone.o threexplusone.s
	;; clang++ -m64 -Wall -g threexplusone.o timer.o threexinput.o
