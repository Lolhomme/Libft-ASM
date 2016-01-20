# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/13 12:48:09 by alaulom           #+#    #+#              #
#    Updated: 2016/01/20 16:42:16 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;char		*ft_strdup(const char *s1);

global _ft_strdup
extern _ft_strlen, _ft_memcpy, _malloc

section .text

_ft_strdup:
		enter		0, 0
		cmp			rdi, 0
		je			_ret
		call		_ft_strlen
		push		rdi
		push		rax
		mov			rdi, rax
		call		_malloc
		mov			rdi, rax
		pop			rdx
		pop			rsi
		call		_ft_memcpy

_ret:
		leave
		ret
