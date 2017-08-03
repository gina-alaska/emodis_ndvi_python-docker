# Processing NDVI Metric products in HTC using containers
This read.me is written as part of a challenge for the Polar Cyber Infrastructure Hackathon (Stony Brook, NY August 2017)



# Success for this hackathon looks like:
* set up Docker container to run in HTC, we will be using Open Science Grid
* migrate code into system

#### Ultimate goal: 
* By January 2018, refine code and moveto Python
* By January 2018, automate application for yearly process of data into NDVI metrics product for NDVI Metrics. 
* Be able to store raw data, results data, and algorithms / application for free or cheaply.

## Project components:
* source files from MODIS-NDVI
* algorithm / application - python code in docker container for HTC for processing and storage
* Docker image

#### Diagram (draft):
![alt text](/blob/master/NDVItoDocker.jpg)

## Tools used:
* HTC - High Throughput Computing, specilizing in using many computing resources over long periods of time to accomplish a computational task. This research was done using resources provided by the Open Science Grid [1,2], which is supported by the National Science Foundation award 1148698, and the U.S. Department of Energy's Office of Science.   
* Docker - a software container platform for running an image of the application

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

