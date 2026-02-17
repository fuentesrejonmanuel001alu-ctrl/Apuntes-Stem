#!/bin/bash 

DIVISION_ENTERA() { 
  division=$(($1/$2))
  echo $division

} 
resultado=$(DIVISION_ENTERA 7 5)
echo $resultado