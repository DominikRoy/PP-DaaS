# PP-DaaS
We provide the implementation for a privacy-preserving multi-party policy evalation tailored for Drone-as-a-Service paradigm.


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
### Instructions for compiling ABY Framework
### Instructions for the ABY Server STP
### Instructions for the ABY Client DRONE
 
