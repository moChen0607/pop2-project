#!/bin/bash
# REM project-wide vars
# for linux, it's set RMANTREE/lib to LD_LIBRARY_PATH - for win, it's PATH, on OSX, it's DYLD_LIBRARY_PATH
export RMSTREE=/opt/pixar/RenderManStudio-20.0-maya2016
export RMANTREE=/opt/pixar/RenderManProServer-20.0
export PATH=$RMANTREE/lib;$PATH
export POP2_PROJECT_DIR=/home/$USER/mount/collaborative/portal-origins-part-2

export PYTHONPATH=/home/$USER/mount/collaborative/portal-origins-part-2/Pipeline/the_LATEST/sys_PY/py_MODULES;
# NUKE_PATH=%POP_PROJECT_DIR%\Pipeline\the_LATEST\latest_NUKE
# set NUKE_PATH=%POP_PROJECT_DIR%\Pipeline\the_LATEST\latest_NUKE
# set NUKE_PATH=%POP_PROJECT_DIR%\Pipeline\the_LATEST\latest_NUKE;
export NUKE_PATH=/home/$USER/mount/collaborative/portal-origins-part-2/Pipeline/the_LATEST/latest_NUKE
$APP_EXECUTABLE --nukex
