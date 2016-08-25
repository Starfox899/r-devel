FROM rocker/r-devel
MAINTAINER <sascha.herrmann.consulting@gmail.com>

# Install some additional tools to make the container more useable
RUN apt-get -y install vim ssh
# Install libraries necessary for r build tools
RUN apt-get -y install libxml2-dev libssl-dev
# Install r build tools
RUN echo 'install.packages(c("devtools","roxygen2","testthat"), repos="http://cran.rstudio.com/")' | R --vanilla

