/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sabsanto <sabsanto@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/02 12:42:20 by sabsanto          #+#    #+#             */
/*   Updated: 2024/11/02 13:40:57 by sabsanto         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t nmemb, size_t size)
{
	size_t	total_size;
	void	*prt;

	total_size = nmemb * size;
	prt = malloc(total_size);
	if (prt == NULL)
	{
		return (NULL);
	}
	ft_bzero(prt, total_size);
	{
		return (prt);
	}
}
