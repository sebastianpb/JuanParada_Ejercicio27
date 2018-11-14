#PBS -l nodes=4:ppn=1,mem=1gb,walltime=00:10:00
#PBS -m abe
#PBS -N ejercicio27

cd $PBS_O_WORKDIR # este es el directorio desde donde se ejecuto qsub
make clean
make

mpirun -np 4 -hostfile hostfile ./Hello
echo Realizado!!


