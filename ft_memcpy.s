# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/20 16:25:39 by alaulom           #+#    #+#              #
#    Updated: 2016/02/20 15:42:33 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void		*ft_memcpy(void *dst, const void *src, size_t n);

global _ft_memcpy

section .text

_ft_memcpy:
		push	rdi
		mov		rcx, rdx
		cld
		rep		movsb
		pop		rax
		ret
