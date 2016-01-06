# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/06 15:15:15 by alaulom           #+#    #+#              #
#    Updated: 2016/01/06 16:23:56 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_toupper(int c);

gobal _ft_toupper

section .text

_ft_toupper:
		if1:	cmp		rdi, 'a'
				jge		endif1
				cmp		rdi, 'z'
				jle		endif1
				sub		rdi, 32
		endif1:

_ret:
		mov		rax, rdi
		ret

