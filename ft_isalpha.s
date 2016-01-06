# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/25 18:14:47 by alaulom           #+#    #+#              #
#    Updated: 2016/01/06 13:18:00 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_isalpha(int c);

global	_ft_isalpha

section .text

_ft_isalpha:
		cmp		rdi, 'A'
		jl		_retf
		cmp		rdi, 'z'
		jg		_retf
		cmp		rdi, 'Z'
		jle		_ret
		cmp		rdi, 'a'
		jge		_ret

_retf:
		mov		rax, 0
		ret

_ret:
		mov		rax, 1
		ret
