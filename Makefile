# =========================
# 42 - libft Makefile
# =========================

NAME    := libft.a
CC      := cc
CFLAGS  := -Wall -Wextra -Werror
AR      := ar rcs
RM      := rm -f

# Header (used as a dependency so objects rebuild when header changes)
HEADER  := libft.h

# -------------------------
# Mandatory sources (NO ft_lst*)
# -------------------------
SRCS := ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c \
        ft_isprint.c ft_memset.c ft_strlen.c ft_bzero.c \
        ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c \
        ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c \
        ft_memchr.c ft_strncmp.c ft_memcmp.c ft_strnstr.c \
        ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c \
        ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
        ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
        ft_putendl_fd.c ft_putnbr_fd.c

# -------------------------
# Bonus sources (Linked List)
# -------------------------
BONUS_SRCS := ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
              ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

# Objects
OBJS        := $(SRCS:.c=.o)
BONUS_OBJS  := $(BONUS_SRCS:.c=.o)

# Default target
all: $(NAME)

# Build the library from mandatory objects
$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

# Compile rule (each .c -> .o)
%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -I. -c $< -o $@

# Bonus target:
# 1) ensure libft.a exists from mandatory
# 2) compile bonus objects
# 3) add them into the same archive
bonus: $(NAME) $(BONUS_OBJS)
	$(AR) $(NAME) $(BONUS_OBJS)

clean:
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
