# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/11 15:10:40 by alaulom           #+#    #+#              #
#    Updated: 2016/02/20 15:19:27 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void		*ft_memset(void *s, int c, size_t n);

global _ft_memset

section .text

_ft_memset:
		push	rdi
		mov		rax, rsi
		mov		rcx, rdx

		cld
		rep		stosb

		pop		rax
		ret
