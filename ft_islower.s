# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/28 13:58:09 by alaulom           #+#    #+#              #
#    Updated: 2016/01/28 14:01:30 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_islower(int c);

global	_ft_islower

section .text

_ft_islower:
		cmp		rdi, 'a'
		jl		_retf
		cmp		rdi, 'z'
		jg		_retf

_ret:
		mov		rax, 1
		ret

_retf:
		mov		rax, 0
		ret
