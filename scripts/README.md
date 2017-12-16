## Documentation for the scripts in this directory

### build_potfit.sh

In order to use this script, you must have a few things set up:

- You need to have a job directory, where this job will run. In this directory
you should have a configuration file for potfit, generated from VASP for example.
- You need to clone this project. i.e. `git clone https://github.com/UMKC-CPG/potentials.git`

Now you can edit the various parts of your configuration in that script. The important ones are:

- `POT_OPTION`: This is the potfit executable you will create. It is of the form 
"potfit_[option]_[option]....". For example, to create a mpi executable for Tersoff
potential, you need to set `POT_OPTION` to `"potfit_mpi_tersoff_apot"`
- `JOB_DIR`: The directory in which you will run the potfit job. 
- `CONFIG_FILE`: The configuration file inside of `${JOB_DIR}`.

Other settings which you should review and change are under the `Slurm parameters`.
Change these settings to match the executable that you are creating. For example if
you are creating an executable with MPI, then the settings here should contain then
number of nodes and tasks you want to allocate.

Once you are satisfied, you are ready to submit this script with slurm.

If you run into any issues or find any bugs, submit a pull request on github.

Author: Naseer Dari, 12/2017
