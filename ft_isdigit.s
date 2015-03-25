# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/25 15:55:48 by alaulom           #+#    #+#              #
#    Updated: 2015/03/25 17:55:44 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_isdigit(int c);

global	_ft_isdigit

section .text

_ft_isdigit:
		cmp			rdi, '0'
		jl			_retf
		cmp			rdi, '9'
		jg			_retf

_ret:
		mov			rax, 1
		ret

_retf
		mov			rax, 0
		ret
