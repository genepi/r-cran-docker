
FROM r-base:latest

# set deb-src
RUN echo "deb-src http://deb.debian.org/debian testing main" >> /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get install libcurl4-openssl-dev libssl-dev -y

# pandoc
RUN wget https://github.com/jgm/pandoc/releases/download/2.5/pandoc-2.5-1-amd64.deb -O pandoc.deb
RUN dpkg -i pandoc.deb

# install additional R packages
RUN R -e "install.packages('rmarkdown', repos = 'http://cran.rstudio.com')"
RUN R -e "install.packages('RColorBrewer', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('knitr', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('markdown', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('rmarkdown', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('ggplot2', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('data.table', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('plotly', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('dplyr', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('devtools', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('flexdashboard', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('BiocManager', repos = 'http://cran.rstudio.com' )"
RUN R -e "BiocManager::install(c('geneplotter'))"
RUN R -e "devtools::install_github('rstudio/DT')"
