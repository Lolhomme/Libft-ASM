# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putstr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/28 17:02:31 by alaulom           #+#    #+#              #
#    Updated: 2016/01/28 17:09:12 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void		ft_putstr(char *s);

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

global _ft_putstr
extern _ft_strlen

section .text

_ft_putstr:
		push	rdi
		call	_ft_strlen

		mov		rdx, rax
		mov		rdi, STDOUT
		pop		rsi
		mov		rax, MACH_SYSCALL(WRITE)
		syscall
		ret
