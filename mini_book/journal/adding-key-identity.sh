#!/bin/bash
eval `ssh-agent -s`
ssh-add ~/.ssh/linux_laptop 

bash -i