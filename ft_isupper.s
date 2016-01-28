# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/28 14:01:50 by alaulom           #+#    #+#              #
#    Updated: 2016/01/28 14:04:17 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_isupper(int c);

global	_ft_isupper

section .text

_ft_isupper:
		cmp		rdi, 'A'
		jl		_retf
		cmp		rdi, 'Z'
		jg		_retf

_ret:
		mov		rax, 1
		ret

_retf:
		mov		rax, 0
		ret
