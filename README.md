# PP-DaaS
We provide the implementation for a privacy-preserving multi-party policy evalation tailored for Drone-as-a-Service paradigm.
The implementation is based from following [Github Repo](https://github.com/I-Stork/sfe-policy-eval)

### Instructions for Docker:
- Make sure [docker](https://docs.docker.com/engine/install/) is installed.
- To build the docker image execute following command:
```
sudo docker build -t pp-daas .                                                                              
```
### Generate Policy Shares
We provide a python program which generates the policy and the associated shares of it.
Our python program takes six arguments as input:
- 1. argument defines the number of policies to be generated.
- 2. argument defines the policy size.
- 3. argument defines the request size.
- 4. argument defines the path for the original policy.
- 5. argument defines the path for the first secret share of the policy.
- 6. argument defines the path for the other secret share of the policy.
We provide example parameters and on how to execute the program:
```
python generatorshares.py 2 5 5 original.dat share0.dat share1.dat
```
### Instructions for compiling ABY Framework and PP-DaaS
Make sure that the docker is built. Hence, the following instructions are executed in the Docker image, so that the host system does not require to install packages for executing our program.
First open bash in the docker image:
```
sudo docker run -it -v"${PWD}:/home/osboxes/" pp-daas bash
```
Next navigate to the ABY folder:
```
cd sfe-policy-eval/ABY
```
Then execute cmake to configure the modules :
```
mkdir build && cd build
cmake ..
```
Navigate to the root folder and configure the actual program:
```
cd ../
cmake .
```
Then execute the 'make' command for executing the makefile to compile the program and generate the executeable:
```
make
```
### Instructions for the ABY Server STP
Execute following command to run the Docker image and to execute bash commands:
```
sudo docker run -p 7766:7766 -it -v"${PWD}:/home/osboxes/" pp-daas bash
cd  sfe-policy-eval/

```
In the Docker image execute following command for the SERVER:
```
./policy_eval_test -a use the IP address of the docker image,e.g.,172.17.0.3 -r 0
```
### Instructions for the ABY Client DRONE
Execute following command to run the Docker image and to execute bash commands:
```
sudo docker run -it -v"${PWD}:/home/osboxes/" pp-daas bash
cd  sfe-policy-eval/

```
In the Docker image execute following command for the CLIENT:
```
./policy_eval_test -a use the IP address of the docker image,e.g.,172.17.0.3 -r 1
```

 
