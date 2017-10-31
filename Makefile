all : netfilter_block

netfilter_block : main.o
	gcc -o netfilter_block main.o -lpcap -lnetfilter_queue

main.o : main.c
	gcc -c -o main.o main.c -lnetfilter_queue -lpcap

clean : 
	rm *.o netfilter_block
