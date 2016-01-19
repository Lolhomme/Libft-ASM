# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/25 16:30:16 by alaulom           #+#    #+#              #
#    Updated: 2016/01/19 14:37:42 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int			ft_isascii(int c);

global	_ft_ascii

section .text

_ft_ascii:
		cmp		rdi, 'nul'
		jc		_retf
		cmp		rdi, 'del'
		ja		_retf
		
_ret:
		mov		rax, 1
		ret
		
_retf:
		mov		rax, 0
		ret
