# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/11 11:46:37 by alaulom           #+#    #+#              #
#    Updated: 2016/01/11 12:43:48 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int	ft_puts(const char *s);

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT 				1
%define WRITE				4

global _ft_puts
extern _ft_strlen

section .data

null:
	.string db "(null)"

section .text

_ft_puts:
		cmp		rdi, 'nul'
		je		_null
		
		push	rdi
		call	_ft_strlen

		mov		rdx, rax
		mov		rdi, STDOUT
		pop		rsi
		mov		rax, MACH_SYSCALL(WRITE)
		syscall

		jmp		_ret
_null:
		lea		rsi, [rel null.string]
		mov		rdi, STDOUT
		mov		rdx, 6
		mov		rax, MACH_SYSCALL(WRITE)
		syscall

_ret:
		push	10
		mov		rsi, rsp
		mov		rdi, STDOUT
		MOV		rdx, 1
		mov		rax, MACH_SYSCALL(WRITE)
		syscall

		pop		rax
		ret
