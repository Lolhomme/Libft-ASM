# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putchar.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/28 16:41:23 by alaulom           #+#    #+#              #
#    Updated: 2016/01/28 16:54:50 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void		ft_putchar(char c);

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

global _ft_putchar

section .text

_ft_putchar:
		push	rdi
		mov		rdx, 1
		mov		rdi, STDOUT
		mov		rsi, rsp
		mov		rax, MACH_SYSCALL(WRITE)
		syscall
		pop		rax
		ret	
