
omp: omp_image.c
	gcc -g omp_image.c -o omp_image -lm -fopenmp
omp_prof: omp_image.c
	gcc -g omp_image.c -o omp_image -lm -fopenmp -pg
pthread: pthread_image.c
	gcc -g pthread_image.c -o pthread_image -lm -lpthread
pthread_prof: pthread_image.c
	gcc -g pthread_image.c -o pthread_image -lm -lpthread -pg
image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image pthread_image omp_image output.png gmon.out
