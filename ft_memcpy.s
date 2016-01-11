# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/11 15:43:23 by alaulom           #+#    #+#              #
#    Updated: 2016/01/11 16:12:27 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void		*ft_memcpy(void *dst, const void *src, size_t n);

global _ft_memcpy

setion .text

_ft_memcpy:
		push	rdi
		mov		rcx, rdx

		cld
		rep		movsb

		pop		rax
		ret
