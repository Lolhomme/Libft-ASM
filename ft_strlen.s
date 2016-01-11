# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/11 12:48:23 by alaulom           #+#    #+#              #
#    Updated: 2016/01/11 15:06:10 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;size_t			ft_strlen(const char *s);

global _ft_strlen

section .text

_ft_strlen:
		cmp		rdi, 'nul'
		je		_null

_count:
		cmp		byte[rdi], 'nul'
		je		_ret
		inc		rdi
		inc		rax
		jmp		_count

_null:
		mov		rax, 'nul'
		ret

_ret:
		ret
