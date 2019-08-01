# Performance Test
## Apache JMeter

Apache JMeter is an Apache project that can be used as a load testing tool for analyzing and measuring the performance of a variety of services, with a focus on web applications

//image

## Test
Main page (https://iovio.com/) & Contact us (https://iovio.com/contact-us/)
Total User : 3
Loop Count : 10

## Running
Clone or download project

### JMeter gui
> Install apache jmeter
> Open project
> On top of application click '>' button

### JMeter non-gui terminal
> Open terminal
> Run test command
   ```
   jmeter -n -t [Path/to/iovio.jmx file] -l [Path/to/test-plan.csv file] -e -o [Path/to/report folder]
   ```

### Docker 
> Get the docker images from https://hub.docker.com/r/justb4/jmeter/
> Go to project folder
> Run the Build script to download dependencies, including the docker CLI:
   ```
   ./build.sh
   ```
> Run test build script
   ```
   ./test.sh
   ```
(Source : https://hub.docker.com/r/justb4/jmeter/)


## Report
Report and log will be provided for every end of execution in report folder
