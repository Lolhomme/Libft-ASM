# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolowwer.s                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/06 16:24:27 by alaulom           #+#    #+#              #
#    Updated: 2016/01/06 16:30:47 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_tolower(int c);

global _ft_tolower

section .text

_ft_tolower:
		if1:	cmp		rdi, 'A'
				jge		endif1
				cmp		rdi, 'Z'
				jle		endif1
				add		rdi, 32
		endif1:

_ret:
		mov		rax, rdi
		ret
