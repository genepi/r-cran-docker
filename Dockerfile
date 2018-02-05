
FROM r-base:latest

# install additional packages
RUN R -e "install.packages('RColorBrewer', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('knitr', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('markdown', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('rmarkdown', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('ggplot2', repos = 'http://cran.rstudio.com' )"
RUN R -e "install.packages('data.table', repos = 'http://cran.rstudio.com' )"
