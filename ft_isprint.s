# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/06 14:50:31 by alaulom           #+#    #+#              #
#    Updated: 2016/01/06 15:03:14 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_isprint(int c);

gobal _ft_isprint

section .text

_ft_isprint:
		cmp		rdi, 040
		jge		_ret
		cmp		rdi, 0176
		jle		_ret

_retf
		mov		rax, 0
		ret

_ret
		mov		rax, 0
		ret
