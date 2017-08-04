# Processing NDVI Metric products using containers
This read.me is written as part of a challenge for the Polar Cyber Infrastructure Hackathon (Stony Brook, NY August 2017)




# Success for this hackathon looks like:
* create Docker image for testing model
* create smaller test dataset
* prep * lay groundwork for working with Google Cloud Compute or OSG (or other)

#### Ultimate goal: 
* By January 2018, refine code and move from IDL to Python
* After successful testing, deploy Docker container on OSG HTC platform
* Automate application for yearly process of data into NDVI metrics product for NDVI Metrics. 
* Make something reproducible for our own use, as well as for our funder
* Be able to store raw data, results data, and algorithms / application for free or cheaply.

#### General reuseability / portability goals:
* Test this container on multiple platforms (Google, Shifter, Jetstream, others)
* Make this container work as part of an annual research process
* Make github repo public and provide open data license

## Project components:
* source files from MODIS-NDVI
* algorithm / application - python code in docker container for HTC for processing and storage
* Docker image
* build and run commands
* test dataset - https://github.com/gina-alaska/emodis_ndvi_python-docker/blob/master/2016-test.tar

## Tools used (or that we planned to use):
* HTC - High Throughput Computing, specilizing in using many computing resources over long periods of time to accomplish a computational task. This research was done using resources provided by the Open Science Grid [1,2], which is supported by the National Science Foundation award 1148698, and the U.S. Department of Energy's Office of Science.   
* Docker - a software container platform for running an image of the application
* Singularity - read more here: https://cloud4scieng.org/singularity-a-container-system-for-hpc-applications/  
* Condor - job manager

#### Diagram (draft):
![alt text](https://github.com/gina-alaska/emodis_ndvi_python-docker/blob/master/NDVItoDocker.jpg)

## History of NDVI Metrics project and UAF-GINA:
The code has been run yearly since 2012 to process NDVI metrics

#### Affiliated github repos and pre-existing documentation
* https://github.com/gina-alaska/ndvi-metrics/
* https://github.com/gina-alaska/modis-ndvi-metrics
* http://catalog.northslope.org/catalog/entries/3867-modis-derived-ndvi-metrics
* http://gina.alaska.edu/projects/modis-derived-ndvi-metrics

#### Previously published work on this code
http://www.mdpi.com/2072-4292/7/10/12961  
https://irma.nps.gov/DataStore/DownloadFile/522409  

## Contributors:
@dayne - Docker containerization  
@jiang-gina - NDVI Metrics application  
@vlraymond - award winning documentation  

