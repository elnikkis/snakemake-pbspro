#!/bin/sh
# properties = {properties}
export LANG=ja_JP.utf8
export PATH=$PBS_O_PATH:$PATH
hostname
date
{exec_job}
date
