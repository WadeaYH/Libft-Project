*This activity has been created as part of the 42 curriculum by wyawanse.*

# libft

## Description
libft is a personal C library developed as part of the 42 curriculum.
It reimplements a core set of standard C library functions and common utilities.
The goal is to understand how each function works internally, including memory management,
string manipulation, and linked list handling.

---

## Instructions

### Compilation
```bash
make
```

This will generate a static library:
```text
libft.a
```

### Cleaning
```bash
make clean
make fclean
make re
```

### Usage
Include the header and link the library:
```c
#include "libft.h"
```

```bash
cc -Wall -Wextra -Werror main.c libft.a -o program
```

---

## Library Content

### Character checks
- ft_isalpha
- ft_isdigit
- ft_isalnum
- ft_isascii
- ft_isprint
- ft_toupper
- ft_tolower

### Memory functions
- ft_memset
- ft_bzero
- ft_memcpy
- ft_memmove
- ft_memchr
- ft_memcmp

### String functions
- ft_strlen
- ft_strlcpy
- ft_strlcat
- ft_strchr
- ft_strrchr
- ft_strncmp
- ft_strnstr
- ft_strdup

### Conversion & allocation
- ft_atoi
- ft_calloc
- ft_itoa

### String creation & manipulation
- ft_substr
- ft_strjoin
- ft_strtrim
- ft_split
- ft_strmapi
- ft_striteri

### File descriptor output
- ft_putchar_fd
- ft_putstr_fd
- ft_putendl_fd
- ft_putnbr_fd

### Linked list functions
- ft_lstnew
- ft_lstadd_front
- ft_lstsize
- ft_lstlast
- ft_lstadd_back
- ft_lstdelone
- ft_lstclear
- ft_lstiter
- ft_lstmap

---

## Usage Example

```c
#include "libft.h"
#include <stdio.h>

int main(void)
{
    char *s = ft_strdup("42 Network");
    printf("%s\n", s);
    free(s);
    return (0);
}
```

---

## Resources

### Documentation
- Linux man pages (`man strlen`, `man memcpy`, etc.)
- https://en.cppreference.com/w/c

### AI Usage
AI was used only to help structure and write documentation (README.md).
All code implementation and logic were written and verified by the author.

---
