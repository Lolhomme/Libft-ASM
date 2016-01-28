# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/11 15:10:40 by alaulom           #+#    #+#              #
#    Updated: 2016/01/28 12:27:40 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void		*ft_memset(void *s, int c, size_t n);

global _ft_memset

section .text

_ft_memset:
		push	rdi
		mov		rcx, rdx
		mov		rax, rsi

		cld
		rep		stosb

		pop		rax
		ret
