#include <iostream>
#include <mpi.h>
#include <unistd.h> // For gethostname
#include <time.h>   // For time

int main(int argc, char** argv) {
	MPI_Init(&argc, &argv);

	int rank, num_procs;
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Comm_size(MPI_COMM_WORLD, &num_procs);

	char hostname[MPI_MAX_PROCESSOR_NAME];
	int len;
	MPI_Get_processor_name(hostname, &len);
	
	time_t rawtime;
	struct tm * timeinfo;
	time(&rawtime);
	timeinfo = localtime(&rawtime);
	
	std::cout << "Rank " << rank << " of " << num_procs
		  << " on host: " << hostname
		  << " at time: " << asctime(timeinfo);
	
	MPI_Finalize();
	return 0;
}

