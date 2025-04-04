# Datavyu Lab Examples

4/7/2025
John Franchak

## About this repository

This is a repository to provide examples for typical Datavyu scripts. The directory opf_files contains a few datavyu files. The directory ruby_scripts contains Datavyu-style Ruby script examples. The tidyvyur_scripts contains an example that uses John's `tidyvyur` package.

## Setup and other links

For Datavyu scripting in Ruby, it is recommended that you familiarize yourself with the [Ruby API](https://datavyu.org/user-guide/api.html) section of the Datavyu user guide. In particular, the [API Reference Page](https://datavyu.org/user-guide/api/reference.html) has a list of what functions can access data.

For `tidyvyur`, it can be installed from its [Github](https://github.com/JohnFranchak/tidyvyur) location from within an R script as follows:

```
install.packages("remotes") #Install the remotes packages (if necessary)
remotes::install_github("johnfranchak/tidyvyur")
```
