#Understanding Shell Scripting and OpenSSL ( A toolkit for transport layer for funstionalities such as socket connections etc. It allows us to genrate encryted strings usign algorithms)

#!/bin/bash

#Password Generation

#Getting the lenght of the password from user
echo "Lets generator a random password"
printf "\n"
echo "What is the lenght of the password you are looking for:"
printf "\n"
read Lenght_Pass

#Algorithm for random generation
#base64 has 48characters - the most simplest encrytion algorithm. 

printf "\n"

for i in $(seq 1);
do
    printf "This is a password generated using base64 algorithm\n"
    openssl rand -base64 48 | cut -c1-$Lenght_Pass 
done

printf "\n"

for i in $(seq 1);
do
    printf "This is a password generated using hexadecimal algorithm\n"
    openssl rand -hex 48 | cut -c1-$Lenght_Pass 
done
