# Copyright 2021 Francisco Pina Martins <stunts@pinamartins.com>
# This file is part of Population structure in Quercus suber L. revealed by nuclear microsatellite markers.
# Qsuber_PCA is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# Qsuber_PCA is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with Qsuber_PCA. If not, see <http://www.gnu.org/licenses/>.

library(adegenet)
library(pcaMethods)

# Read the genepop file
my_geno = read.genepop("17_pops_14_loci_DIPLOID.gen", ncode=3)
geno_data = my_geno$tab

popnames = gsub("_", "", gsub("[[:digit:]]", "", row.names(geno_data)))
pops = unique(popnames)
pop_colours = as.numeric(factor(popnames, levels=pops))
msst_pca = pca(geno_data, scale="vector", method="nipals")

svg("All_loci_PCA.svg")
par(xpd=T, mar=par()$mar+c(0,0,0,4))

slplot(msst_pca,
       scol=pop_colours,
       scoresLoadings=c(T,F),
       sl=NULL,
       spch=pop_colours)

legend(1.005, 1.05,
       legend=pops,
       pch=unique(pop_colours),
       col=unique(pop_colours))
dev.off()


# Read the neutral loci genepop file
my_neutral_geno = read.genepop("17_pops_11_loci_DIPLOIDS_NEUTRAL.gen", ncode=3)
neutral_geno_data = my_neutral_geno$tab

popnames = gsub("_", "", gsub("[[:digit:]]", "", row.names(neutral_geno_data)))
pops = unique(popnames)
pop_colours = as.numeric(factor(popnames, levels=pops))
msst_pca = pca(neutral_geno_data, scale="vector", method="nipals")

svg("Neutral_loci_PCA.svg")
par(xpd=T, mar=par()$mar+c(0,0,0,4))

slplot(msst_pca,
       scol=pop_colours,
       scoresLoadings=c(T,F),
       sl=NULL,
       spch=pop_colours)

legend(1.005, 1.05,
       legend=pops,
       pch=unique(pop_colours),
       col=unique(pop_colours))

dev.off()