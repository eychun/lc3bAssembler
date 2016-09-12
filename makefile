
CC           := gcc-5
CFLAGS       := -pedantic -ansi -Wall -lm
GPROFFLAGS   := -pg

status:
	@echo
	git branch
	git remote -v
	git status

clean:
	rm lc3bAssembler gmon.out

lc3bAssembler: lc3bAssembler.c
	$(CC) $(CFLAGS) $(GPROFFLAGS) lc3bAssembler.c -o lc3bAssembler
