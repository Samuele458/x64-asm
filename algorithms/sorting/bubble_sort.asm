section .data
section .bss
section .text
	global bubble_sort


; Function:			void bubble_sort( int* array, int size )
; Description:		Simple bubblesort implementation in x64 NASM assembly
; Parameters:
;					- int* array (rdi): Array to sort
;					- int size (rsi): Array size		
bubble_sort:
	section .text
	push rbp
	mov rbp, rsp

	mov rcx, rsi-1
	mov r11, 0

	jmp .loop1_end
	.loop1:
		mov r10, r11
		inc r10
		jmp .loop2_end
		.loop2:
			
			mov edx, DWORD [rdi+r11*4]
			cmp edx, DWORD [rdi+r10*4]
			jl .not_swap
			mov r9d, DWORD [rdi+r10*4]
			mov DWORD [rdi+r10*4], edx
			mov DWORD [rdi+r11*4], r9d
		.not_swap:
			inc r10
		.loop2_end:
			cmp r10, rsi
			jl .loop2

		inc r11
	.loop1_end:
		cmp r11, rcx
		jl .loop1

	.end:
		leave
		ret