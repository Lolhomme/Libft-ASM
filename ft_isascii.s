# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/25 16:30:16 by alaulom           #+#    #+#              #
#    Updated: 2016/02/19 16:09:09 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int			ft_isascii(int c);

global	_ft_isascii

section .text

_ft_isascii:
		cmp		rdi, 0
		jc		_retf
		cmp		rdi, 127
		ja		_retf
		
_ret:
		mov		rax, 1
		ret
		
_retf:
		mov		rax, 0
		ret
