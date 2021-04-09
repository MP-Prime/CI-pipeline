#!/bin/bash

eksctl create cluster --name DeployCluster --region eu-west-2 --nodegroup-name NodeGroup --nodes 2 --nodes-min 2 --nodes-max 3 --node-type t2.micro --with-oidc --ssh-access --ssh-public-key second-keypair--managed
