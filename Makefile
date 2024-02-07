all: libft.a sudokusolverecursive.o sudokusolve.o sudokuutility.o sudoku3.o sudokugen.o functiontest

# get_next_line.o: get_next_line.c
# 	gcc -c $< -I./libft

sudoku3.o: sudoku3.c
	gcc -c sudoku3.c

sudokugen.o: sudokugen.c
	gcc -c sudokugen.c 
sudokuutility.o: sudokuutility.c
	gcc -c sudokuutility.c

sudokusolverecursive.o: sudokusolverecursive.c
	gcc -c sudokusolverecursive.c

sudokusolve.o: sudokusolve.c
	gcc -c sudokusolve.c

functiontest: get_next_line.o
	gcc -o functiontest sudokusolverecursive.o sudokusolve.o sudokuutility.o sudoku3.o sudokugen.o -L./libft -lft

clean:
	rm -f *.o *.txt



libft.a:
	$(MAKE) -C libft -f Makefile

clean:
	rm *.o