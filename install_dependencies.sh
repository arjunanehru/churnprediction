#!/bin/bash

# Conda environment management
echo "-------------------------------------------------------------------------------------------------------------------"
echo "Updating conda"
echo "-------------------------------------------------------------------------------------------------------------------"
conda update -n base -y -c defaults conda

##### Option 1: Only create new conda environment when running your jupyter notebooks locally #####
#echo "-------------------------------------------------------------------------------------------------------------------"
#echo "Creating conda environment"
#echo "-------------------------------------------------------------------------------------------------------------------"
#conda create -n customer-churn -y

#echo "-------------------------------------------------------------------------------------------------------------------"
#echo "Activating conda environment"
#echo "-------------------------------------------------------------------------------------------------------------------"
#source activate customer-churn

##### Option 2: Only activate azureml_py36 conda environment when running your jupyter notebooks in Azure ML #####
echo "-------------------------------------------------------------------------------------------------------------------"
echo "Activating conda environment"
echo "-------------------------------------------------------------------------------------------------------------------"
source activate azureml_py36

# Install necessary packages
echo "-------------------------------------------------------------------------------------------------------------------"
echo "Installing xvfb"
echo "-------------------------------------------------------------------------------------------------------------------"
sudo apt-get install xvfb -y

echo "-------------------------------------------------------------------------------------------------------------------"
echo "Installing and updating pip"
echo "-------------------------------------------------------------------------------------------------------------------"
sudo apt-get install python3-pip -y
pip install --upgrade pip

echo "-------------------------------------------------------------------------------------------------------------------"
echo "Installing scikit-learn==0.22.1"
echo "-------------------------------------------------------------------------------------------------------------------"
pip3 install scikit-learn==0.22.1

echo "-------------------------------------------------------------------------------------------------------------------"
echo "Installing graphviz"
echo "-------------------------------------------------------------------------------------------------------------------"
pip3 install graphviz

echo "-------------------------------------------------------------------------------------------------------------------"
echo "Installing plotly"
echo "-------------------------------------------------------------------------------------------------------------------"
conda install plotly -y

echo "-------------------------------------------------------------------------------------------------------------------"
echo "Installing plotly-orca"
echo "-------------------------------------------------------------------------------------------------------------------"
conda install -c plotly plotly-orca -y

echo "-------------------------------------------------------------------------------------------------------------------"
echo "Installing pydotplus"
echo "-------------------------------------------------------------------------------------------------------------------"
conda install pydotplus -y

echo "-------------------------------------------------------------------------------------------------------------------"
echo "Installing graphviz"
echo "-------------------------------------------------------------------------------------------------------------------"
conda install graphviz -y

echo "-------------------------------------------------------------------------------------------------------------------"
echo "Installing seaborn"
echo "-------------------------------------------------------------------------------------------------------------------"
conda install seaborn -y