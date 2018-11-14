/* MPI VERSION OF "HELLO WORLD" IN C */
#include <stdio.h>
#include "mpi.h"

int main(int argc,char *argv[]){
    int rank,size;
    /* starts MPI */
    MPI_Init (&argc,&argv);
    /* get current process rank */
    MPI_Comm_rank (MPI_COMM_WORLD, &rank);
    /*print the rank and number of processes */
    printf("Hello World from process %d of %d\n",rank,size);
    /* ends MPI */
    MPI_Finalize();
    return 0;    
}

