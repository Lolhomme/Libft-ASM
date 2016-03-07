# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/06 16:24:27 by alaulom           #+#    #+#              #
#    Updated: 2016/02/19 17:41:43 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_tolower(int c);

global _ft_tolower

section .text

_ft_tolower:
		cmp		rdi, 'A'
		jl		_ret
		cmp		rdi, 'Z'
		jg		_ret
		add		rdi, 32

_ret:
		mov		rax, rdi
		ret
