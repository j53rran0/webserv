ROOT = ./srcs/

NAME = webserv
CC = g++
CFLAGS = -Wall -Werror -Wextra -std=c++98 -pedantic

SRC =	$(ROOT)webserv.cpp \
		$(ROOT)server.cpp

OBJ =	$(SRC:.cpp=.o)

MSG = Default commit message
#MSG="message" to change message


all: $(NAME)

$(NAME): $(OBJ)
	g++ $(CFLAGS) $(OBJ) -o $(NAME)

clean:
	rm -rf $(NAME)

fclean: clean
	rm -rf $(OBJ)

re: fclean $(NAME)

git:
	git add .
	git commit -m "$(MSG)"
	git push
