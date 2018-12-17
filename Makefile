all: bison-count

bison-count: bison-count.yy.c
	gcc -o $@ $^ -ll

%.yy.c:%.l
	flex -o $@ $<

clean:
	-git clean -fdx
