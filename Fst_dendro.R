# Copyright 2021 Francisco Pina Martins <stunts@pinamartins.com>
# This file is part of Population structure in Quercus suber L. revealed by nuclear microsatellite markers.
# Fst_dendro.R is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# Fst_dendro.R is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with Fst_dendro.R. If not, see <http://www.gnu.org/licenses/>.


fst_orig = read.csv("fsts-dist.csv", header=T, sep="\t", row.names=1)
fst_dist = as.dist(fst_orig)
svg("fsts-dists-tri.svg")
plot(as.dendrogram(hclust(fst_dist, method="average")), xlab="Distance", ylab="", horiz=T, edgePar=list(col="forestgreen", lwd=3), main="Pairwise Fst distance dendrogram", type="tr")
dev.off()


svg("fsts-dists-rec.svg")
plot(as.dendrogram(hclust(fst_dist, method="average")), xlab="Distance", ylab="", horiz=T, edgePar=list(col="forestgreen", lwd=3), main="Pairwise Fst distance dendrogram", type="rec")
dev.off()
