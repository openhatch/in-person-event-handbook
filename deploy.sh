#!/bin/bash
set -e
set -x

make html
rsync -avzP --delete "$PWD"/_build/html/. paulproteus_ohusergroups@ssh.phx.nearlyfreespeech.net:.

