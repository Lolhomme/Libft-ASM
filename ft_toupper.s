# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/06 15:15:15 by alaulom           #+#    #+#              #
#    Updated: 2016/02/19 17:42:30 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_toupper(int c);

global _ft_toupper

section .text

_ft_toupper:
		cmp		rdi, 'a'
		jl		_ret
		cmp		rdi, 'z'
		jg		_ret
		sub		rdi, 32

_ret:
		mov		rax, rdi
		ret

