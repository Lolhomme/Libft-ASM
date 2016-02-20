# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/13 12:48:09 by alaulom           #+#    #+#              #
#    Updated: 2016/02/20 15:29:57 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;char		*ft_strdup(const char *s1);

global _ft_strdup
extern _ft_strlen, _ft_memcpy, _malloc

section .text

_ft_strdup:
		push		rdi
		call		_ft_strlen

		pop			rsi
		mov			rdi, rax
		mov			rbx, rsi
		push		rdi
		call		_malloc

		cmp			rax, 0
		je			_ret

		pop			rdx
		mov			rdi, rax
		mov			rsi, rbx
		call		_ft_memcpy

_ret:
		ret
