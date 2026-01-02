/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wyawanse <wadi.yawanseh@learner.42.tech>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/12/05 15:38:56 by wyawanse          #+#    #+#             */
/*   Updated: 2025/12/17 22:08:08 by wyawanse         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	const unsigned char	*ptr;
	unsigned char		value;
	size_t				i;

	ptr = (const unsigned char *)s;
	value = (unsigned char)c;
	i = 0;
	while (i < n)
	{
		if (ptr[i] == value)
			return ((void *)(ptr + i));
		i++;
	}
	return (NULL);
}
