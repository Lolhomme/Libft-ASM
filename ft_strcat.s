# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/07 13:50:45 by alaulom           #+#    #+#              #
#    Updated: 2016/01/20 16:40:11 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;char		*ft_strcat(char *s1, char *s2);

global _ft_strcat

section .text

_ft_strcat:
		push	rdi
		cmp		rsi, 0
		je		_ret

_s1:
		cmp		byte[rdi], 0
		je		_s2
		inc		rdi
		jmp		_s1

_s2:
		cmp		byte[rsi], 0
		je		_ret

		movsb

		jmp		_s2

_ret:
		pop		rax
		ret
