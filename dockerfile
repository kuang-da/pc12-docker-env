FROM bioconductor/bioconductor_docker:devel

# Differential Expression Analysis
RUN R -e "install.packages('tidyverse')"
RUN R -e "BiocManager::install('DESeq2')"
RUN R -e "BiocManager::install('ComplexHeatmap')"  # For upset plot

# Single-cell RNA-seq
RUN R -e "BiocManager::install('SingleCellExperiment')"
RUN R -e "install.packages('Seurat')"

# Time series analyssi
RUN R -e "BiocManager::install('slingshot')"
RUN R -e "BiocManager::install('tradeSeq')"

# Heatmap Visualization
RUN R -e "install.packages('pheatmap')"
RUN R -e "install.packages('RColorBrewer')"

# Cis-regulatory modules enrichment
RUN R -e "BiocManager::install('org.Rn.eg.db')"
RUN R -e "BiocManager::install('biomaRt')"
RUN R -e "BiocManager::install('RcisTarget')"

# Geneset Enrichment Analysis
RUN R -e "BiocManager::install('clusterProfiler')"
RUN R -e "BiocManager::install('ReactomePA')"
