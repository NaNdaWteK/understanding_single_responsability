# Building project

1.- `docker-compose up --build`
2-- `docker-compose run example /bin/bash`
3.- `bundle install`
4.- `rspec`

# Single responsability explained

## First folder

In first folder we have a person class that have some responsabilitys
We have a group class with some responsabilitys per method, each method and the act during the loop

## Second folder

In the second folder we use our fu for extract one responsability in each method, concretly the act
The persons class mantains his code, because is changed in the third folder

## Third folder

The third folder is at all the most interesting for this code tutorial

In it we can view a lot of change, we intent to use cohesive classes with only one responsability, for that we extract two classes in person class, sport and met
Person  remains with only cohesive variable weight and the kcal_burn method whose mantain cohesive two with his params
SportCalculator class needs met for calculate his kcal, but met not is a important variable for it, that is for we extract it in a single class

# About this code tutorial
This code tutorial is my own aproach to understand a very good book writted by Sandi Metz titled Practical Object-Oriented desing in ruby
