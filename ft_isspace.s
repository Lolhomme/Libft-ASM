# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isspace.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/28 15:37:49 by alaulom           #+#    #+#              #
#    Updated: 2016/01/28 15:54:45 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_isspace(int c);

global	_ft_isspace

section .text

_ft_isspace:
		cmp		rdi, 9
		je		_ret
		cmp		rdi, 10
		je		_ret
		cmp		rdi, 11
		je		_ret
		cmp		rdi, 12
		je		_ret
		cmp		rdi, 13
		je		_ret
		cmp		rdi, 32
		je		_ret
		cmp		rdi, 0
		je		_ret

_retf:
		mov		rax, 0
		ret

_ret:
		mov		rax, 1
		ret
