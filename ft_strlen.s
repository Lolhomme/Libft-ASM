# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/11 12:48:23 by alaulom           #+#    #+#              #
#    Updated: 2016/02/20 14:42:15 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;size_t			ft_strlen(const char *s);

global _ft_strlen

section .text

_ft_strlen:
		cmp		rdi, 0
		je		_null

_count:
		cmp		rdi, 0
		je		_ret
		mov		rax, 0
		mov		rcx, -1
		
		cld
		repnz	scasb

		not		rcx
		lea		rax, [rcx - 1]

_ret:
		ret

_null:
		mov		rax, 0
		ret
