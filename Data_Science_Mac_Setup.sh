#!/bin/bash

# Script to set up a data science and econometrics environment on macOS

# Function to print messages
print_message() {
    echo ""
    echo "----------------------------------------------------"
    echo "$1"
    echo "----------------------------------------------------"
    echo ""
}

# Install Homebrew
print_message "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Python via Homebrew
print_message "Installing Python via Homebrew..."
brew install python

# Install Miniconda via Homebrew
print_message "Installing Miniconda via Homebrew..."
brew install --cask miniconda

# Initialize Conda
print_message "Initializing Conda..."
conda init

# Install R and RStudio
print_message "Installing R and RStudio..."
brew install --cask r
brew install --cask rstudio

# Create and activate Conda environment
print_message "Creating and activating Conda environment..."
conda create --name myenv python=3.9 -y
conda activate myenv

# Install Python packages
print_message "Installing Python packages..."
conda install numpy pandas matplotlib scikit-learn jupyter -y

# Install Jupyter Notebook
print_message "Installing Jupyter Notebook..."
conda install jupyter -y

# Install Quarto
print_message "Installing Quarto..."
brew install --cask quarto

# Configure shell environment
print_message "Configuring shell environment..."
SHELL_NAME=$(basename $SHELL)

if [[ "$SHELL_NAME" == "zsh" ]]; then
    CONFIG_FILE="$HOME/.zshrc"
elif [[ "$SHELL_NAME" == "bash" ]]; then
    CONFIG_FILE="$HOME/.bash_profile"
else
    echo "Unsupported shell: $SHELL_NAME"
    exit 1
fi

echo 'export PATH="/usr/local/bin:$PATH"' >> $CONFIG_FILE
echo 'export PATH="$HOME/miniconda3/bin:$PATH"' >> $CONFIG_FILE

# Reload shell configuration
print_message "Reloading shell configuration..."
source $CONFIG_FILE

# Install R packages
print_message "Installing R packages..."
Rscript -e "install.packages(c('tidyverse', 'data.table', 'ggplot2', 'dplyr', 'forecast'), repos='https://cloud.r-project.org/')"

print_message "Setup complete!"
