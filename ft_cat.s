# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/13 14:29:02 by alaulom           #+#    #+#              #
#    Updated: 2016/01/13 15:42:27 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void		ft_cat(int fd);

%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define	STDOUT				1
%define READ				3
%define WRITE				4
%define	BUFF_SIZE			256

global _ft_cat

section .bss

		buff	resb	BUFF_SIZE

section	.text
		
_ft_cat:
	push	rbp
	mov		rbp, rsp

_cat:
	push	rdi
	lea		rsi, [rel buff]
	mov		rdx, BUFF_SIZE
	mov		rax, MACH_SYSCALL(READ)
	syscall
	jc		_ret
	cmp		rax, 0
	je		_ret

	mov		rdi, STDOUT
	mov		rdx, rax
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	pop		rdi
	jmp		_cat

_ret:
	mov		rsp, rbp
	pop		rbp
	ret
