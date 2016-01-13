/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alaulom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/01/13 16:48:43 by alaulom           #+#    #+#             */
/*   Updated: 2016/01/13 17:04:13 by alaulom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef
	#define

#include <string.h>

/*Part 1*/

void	ft_bzero(void *s, size_t n);
int		ft_isascii(int c);
int		ft_isalnum(int c);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isprint(int c);
int		ft_puts(const char *s);
char	*ft_strcat(char *s1, char *s2);
int		ft_tolower(int c);
int		ft_toupper(int c);

/*Part 2*/

void	*ft_memset(void *s, int c, size_t n);
void	*ft_memcpy(void *dst, const void *src, size_t n);
size_t 	ft_strlen(const char *s);
char	*ft_strdup(const char *s1);

/*Part 3*/

void	ft_cat(int fd);
