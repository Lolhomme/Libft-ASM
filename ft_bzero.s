# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/25 10:41:44 by alaulom           #+#    #+#              #
#    Updated: 2015/03/25 13:28:38 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void		ft_bzero(void *s, size_t n);

global	_ft_bzero

section .text

_ft_bzero:
		push rdi

		ret
