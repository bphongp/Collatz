	;; Bamphiane Annie Phongphouthai bp9qg 11/9/17 threexplusone.s


	global threexplusone
	section .text

threexplusone:
	;; prologue
	xor	rax, rax
	mov	rbx, rdi	;use diff var
	cmp	rbx, 1		;base case--if num=0 then done
	je	end		;jump to end if num equal
	jmp	odd
odd:	
	mov	rbx, rdi
	shr	rbx, 1		;shift right to divide by 2
	jnc	even		;check if there is remainder for the divide jump if there is
	mov	rbx, rdi	;restore register before divide
	imul	rbx, 3		;multiply by 3
	add 	rbx, 1		;add 1
	mov	rdi, rbx	;save into reg
	push	rbx		;save onto stack
	call	threexplusone	;recursive call
	pop 	rbx
	inc 	rax		;count ++
	jmp	end
even:
	mov	rbx, rdi
	shr	rbx, 1		;divide by 2
	mov	rdi, rbx
	push	rbx		;save
	call 	threexplusone	;recursive call
	pop 	rbx
	inc 	rax		;count++
	jmp 	end		
end:
	ret
	;;nasm -f elf64 -g -o threexplusone.o threexplusone.s
	;; clang++ -m64 -Wall -g threexplusone.o timer.o threexinput.o
