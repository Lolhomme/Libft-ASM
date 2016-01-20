# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/11 12:48:23 by alaulom           #+#    #+#              #
#    Updated: 2016/01/20 17:11:14 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;size_t			ft_strlen(const char *s);

global _ft_strlen

section .text

_ft_strlen:
		cmp		rdi, 0
		je		_null

_count:
		cmp		byte[rdi], 0
		je		_ret
		inc		rdi
		inc		rax
		jmp		_count

_null:
		mov		rax, 0
		ret

_ret:
		ret
