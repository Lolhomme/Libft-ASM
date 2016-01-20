# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/20 16:25:39 by alaulom           #+#    #+#              #
#    Updated: 2016/01/20 16:32:49 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void		*ft_memcpy(void *dst, const void *src, size_t n);

global _ft_memcpy

section .text

_ft_memcpy:
		push	rdi

_cpy:
		cmp		rdx, 0
		je		_ret
		mov		rcx, rdx
		cld
		movsb
		jmp		_cpy

_ret:
		pop		rax
		ret
