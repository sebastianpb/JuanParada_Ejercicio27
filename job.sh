#PBS -l nodes=4:ppn=1,mem=1gb,walltime=00:10:00
#PBS -m abe
#PBS -N ejercicio27

cd $PBS_O_WORKDIR
make clean
make
mpirun -np 4 ./Hello
echo Realizado!!


