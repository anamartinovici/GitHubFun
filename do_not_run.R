# -------------------------------------
# Script: Do not run
# Author: Kmamy
# Purpose: Delete all files in the directory
# Notes: do not run!
#
# Copyright(c) Public Domain
# -------------------------------------

#+ Do not run this file!!!

files_list <- list.files(full.names = TRUE)

# now delete all files in the directory.
file.remove(files_list)