# Copyright 2022 Francisco Pina Martins <stunts@pinamartins.com>
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

fis_values = read.csv("FIS_values.csv", header=T, sep="\t")

shapiro.test(fis_values[,"FIS..17.pop."])
shapiro.test(fis_values[,"FIS..K.3."])

t.test(fis_values[,"FIS..K.3."],
       fis_values[,"FIS..17.pop."],
       paired=T,
       alternative="less")
