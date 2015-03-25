# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isaccii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/25 16:30:16 by alaulom           #+#    #+#              #
#    Updated: 2015/03/25 18:00:40 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int			ft_isascii(int c);

global	_ft_ascii

section .text

_ft_ascii:
		cmp		rdi, 'nul'
		jc		retf
		cmp		rdi, 'del'
		ja		retf
		
_ret:
		mov		rax, 1
		ret
		
_retf:
		mov		rax, 0
		ret
