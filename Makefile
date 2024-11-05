NAME = libft.a

SRC = \
ft_isalnum.c \
ft_isalpha.c \
ft_isascii.c \
ft_isdigit.c \
ft_isprint.c \
ft_strlen.c \
ft_strchr.c \
ft_strncmp.c \
ft_strrchr.c \
ft_strlcpy.c \
ft_strnstr.c \
ft_toupper.c \
ft_tolower.c \
ft_bzero.c \
ft_memset.c \
ft_memcpy.c \
ft_memcmp.c \
ft_memchr.c \
ft_memmove.c \
ft_putstr_fd.c \
ft_putchar_fd.c \
ft_putendl_fd.c \
ft_putnbr_fd.c \
ft_calloc.c \
ft_strlcat.c \

CC = gcc 
CFLAGS = -Wall -Wextra -Werror 
OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)	libft.h
	ar rcs $(NAME) $(OBJ)

%.o: %.c
	$(CC)	$(CFLAGS)	-I.	-c	$<	-o	$@

 clean:
	rm -f $(OBJ)	$(BONUS_OBJS)

 fclean:	clean
	rm	-f	$(NAME)

 re:fclean all
