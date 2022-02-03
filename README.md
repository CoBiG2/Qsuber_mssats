# Qsuber_mssats

Population structure in *Quercus suber* L. revealed by nuclear microsatellite markers - paper scripts


## Scripts

### `Qsuber_PCA.R`

Script used to make the paper's PCA analyses.
The data filenames are hard-coded in the file, but everything is quite self-explanatory.
In order to run the script, just modify the path the the input files to match that of your filesystem and it's ready to use.


### `Fst_dendro.R`

Script used to creat Fst dendrograms. Ended up not being used in the paper, but since it had been writen we decided it was a good a idea to leave it here, both as a reference, and in case it might be of use to someone else.


## Datafiles

### `17_pops_13_loci_DIPLOID.gen`

Genepop formatted file containing microssatellite alleles (17 populations and 13 loci)


### `17_pops_11_loci_DIPLOIDS_NEUTRAL.gen`

Genepop formatted file containing 'neutral' microssatellite alleles (17 populations and 11 loci)


### `fsts-dist.csv`

Tab-separated pairwise Fst triangular matrix required for `Fst_dendro.R`. Like the script that requires it, this file ended up not being used in the paper itself.


## Citation

Not yet available.
