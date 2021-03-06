# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/06 13:21:47 by alaulom           #+#    #+#              #
#    Updated: 2016/01/20 15:21:11 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_isalnum(int c);

global _ft_isalnum

section .text

extern _ft_isalpha, _ft_isdigit

_ft_isalnum:
		call	_ft_isalpha
		cmp		rax, 1
		je		_ret
		call	_ft_isdigit
		cmp		rax, 1
		je		_ret

_retf:
		mov		rax, 0
		ret
_ret:
		mov		rax, 1
		ret
