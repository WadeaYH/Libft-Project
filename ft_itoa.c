/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rockstar <rockstar@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/12/18 16:40:18 by wyawanse          #+#    #+#             */
/*   Updated: 2025/12/28 18:51:03 by wyawanse         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static	int	intlen(long n)
{
	int	len;

	len = 0;
	if (n < 0)
		len++;
	while (n)
	{
		n /= 10;
		len++;
	}
	return (len);
}

char	*ft_itoa(int n)
{
	char	*str;
	long	number;
	int		len;

	number = n;
	if (number == 0)
		return (ft_strdup("0"));
	len = intlen(number);
	str = malloc(len + 1);
	if (!str)
		return (NULL);
	str[len] = '\0';
	if (number < 0)
	{
		str[0] = '-';
		number = -number;
	}
	while (number)
	{
		str[--len] = number % 10 + '0';
		number /= 10;
	}
	return (str);
}
