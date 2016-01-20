# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/06 14:50:31 by alaulom           #+#    #+#              #
#    Updated: 2016/01/20 15:26:00 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_isprint(int c);

global	_ft_isprint

section .text

_ft_isprint:
	cmp		rdi, ' '
	jl		_retf
	cmp		rdi, '~'
	jg		_retf

_ret:
	mov		rax, 1
	ret

_retf:
	mov		rax, 0
	ret
