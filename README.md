# Qsuber_mssats

Population structure in *Quercus suber* L. revealed by nuclear microsatellite markers - paper scripts


## Scripts

### `Qsuber_PCA.R`

Script used to make the paper's PCA analyses.
The data filenames are hard-coded in the file, but everything is quite self-explanatory.
In order to run the script, just modify the path to the input files to match that of your filesystem and it's ready to use.


### `Fst_dendro.R`

Script used to create Fst dendrograms. ~~Ended up not being used in the paper~~, but since it had been written we decided it was a good a idea to leave it here, both as a reference, and in case it might be of use to someone else.

### `pairwise_test.R`

Script used to calculate the t-test for the FIS values. It's so simple it didn't warrant any special documentation.


### `map_plotter.py`

Python script based on the one from [pyRona](https://gitlab.com/StuntsPT/pyRona) used to draw the plot from figure 1. Requires [cartopy](https://scitools.org.uk/cartopy/docs/latest/index.html), [numpy](https://numpy.org/) and [matplotlib](https://matplotlib.org/).
Takes 3 arguments: `sample_coords.csv`, `output.svg` and `shapefile.shp`
It will draw a map, based on the sample coordinates, with the distribution shapefile superimposed.


## Datafiles

### `17_pops_13_loci_DIPLOID.gen`

Genepop formatted file containing microssatellite alleles (17 populations and 13 loci)


### `17_pops_11_loci_DIPLOIDS_NEUTRAL.gen`

Genepop formatted file containing 'neutral' microssatellite alleles (17 populations and 11 loci)


### `fsts-dist.csv`

Tab-separated pairwise Fst triangular matrix required for `Fst_dendro.R`. Like the script that requires it, this file ended up not being used in the paper itself.


### `FIS_values.csv`

Tab-separated file containing FIS values per microssat, each column has values calculated from different population arrangements


### `Sample_coords.csv`

Tab-separated file containing sampling site coordinates. First column is sample name, second is Latitude, third is Longitude.

## Citation

Not yet available.
