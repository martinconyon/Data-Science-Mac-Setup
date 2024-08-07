# Data-Science-Mac-Setup

# Data Science Environment Setup for macOS

This repository provides a setup script and instructions for configuring a data science environment on macOS. The setup includes Python, Conda, R, RStudio, Quarto, and essential packages for econometrics and data science.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Verifying Installation](#verifying-installation)
- [Usage](#usage)
- [Troubleshooting](#troubleshooting)
- [License](#license)

## Introduction

This project provides a comprehensive setup for a data science and econometrics environment on macOS. It uses Homebrew to manage installations, Conda to handle Python packages, and includes R and RStudio for statistical analysis. Quarto is also installed for data analysis and reporting.

## Prerequisites

Ensure you have the following tools installed before running the setup script:

- Homebrew: A package manager for macOS. You can install Homebrew by running the following command in your terminal:
  
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

## Installation

1. **Clone the Repository**

   Clone this repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

2. **Run the Setup Script**

   Make the setup script executable and run it:

   ```bash
   chmod +x setup_environment.sh
   ./setup_environment.sh
   ```

   This script will:
   - Install Homebrew (if not already installed)
   - Install Python and Miniconda
   - Install R and RStudio
   - Create a Conda environment and install necessary Python packages
   - Install Quarto

## Verifying Installation

After running the setup script, you should verify the installation by performing the following checks:

1. **Verify Homebrew Installation**

   ```bash
   brew --version
   ```

2. **Verify Python Installation**

   ```bash
   python3 --version
   ```

3. **Verify Conda Installation**

   ```bash
   conda --version
   conda env list
   ```

4. **Verify Jupyter Notebook**

   ```bash
   jupyter notebook
   ```

5. **Verify R Installation**

   ```bash
   R --version
   ```

6. **Verify RStudio**

   Launch RStudio from the Applications folder or via the command:

   ```bash
   open -a RStudio
   ```

7. **Verify Quarto Installation**

   ```bash
   quarto --version
   ```

## Usage

To use the environment, activate the Conda environment and start working with Jupyter notebooks, RStudio, or Quarto:

- **Activate Conda Environment**

  ```bash
  conda activate myenv
  ```

- **Run Jupyter Notebook**

  ```bash
  jupyter notebook
  ```

- **Start RStudio**

  Open RStudio from the Applications folder or via the command line.

- **Use Quarto**

  Create and render Quarto documents using:

  ```bash
  quarto render your_document.qmd
  ```

## Troubleshooting

- **RStudio Not Opening**: Ensure RStudio is properly installed. Try reinstalling it if issues persist.
- **Jupyter Notebook Issues**: Make sure you’re in the correct Conda environment and that Jupyter is installed.
- **Quarto Issues**: Verify the installation and paths. Reinstalling Quarto can resolve issues.

For additional help, consult the respective documentation for Homebrew, Conda, R, RStudio, Jupyter, and Quarto.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
