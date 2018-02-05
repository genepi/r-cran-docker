# r-cran-docker

Run a sample script

     docker run -ti --rm -v "$PWD":/home/docker -w /home/docker -u docker cran Rscript myscript.R
