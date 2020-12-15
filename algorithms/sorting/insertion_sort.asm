section .data
section .bss
section .text
	global insertion_sort



insertion_sort:
	section .text
	push rbp
	mov rbp, rsp

	mov r10, 1
	jmp .loop1_end
.loop1:
	mov r9d, DWORD[rdi+r10*4]

	mov rcx, r10
	dec rcx
	jmp .l2_check
	.l2:
		mov edx, DWORD[rdi+rcx*4]
		inc rcx
		mov DWORD[rdi+rcx*4], edx
		dec rcx
		dec rcx
	.l2_check:
		cmp rcx, 0
		jl .l2_out
		cmp DWORD[rdi+rcx*4], r9d
		jg .l2
	.l2_out:

	inc rcx
	mov DWORD[rdi+rcx*4], r9d
	dec rcx


	inc r10
.loop1_end:
	cmp r10, rsi
	jl .loop1

	leave
	ret