# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/25 16:30:16 by alaulom           #+#    #+#              #
#    Updated: 2016/01/28 12:27:02 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int			ft_isascii(int c);

global	_ft_isascii

section .text

_ft_isascii:
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
