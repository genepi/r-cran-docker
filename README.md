# r-cran-docker

## Run a sample script within R

     docker run -ti --rm -v "$PWD":/home/docker -w /home/docker -u docker genepi/r-cran-docker Rscript myscript.R
