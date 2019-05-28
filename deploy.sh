#!/bin/bash
set -eou pipefail

if ! which firebase 2>&1 > /dev/null ; then
    echo 'You need to install the Firebase CLI tools to use this script.'
    echo 'See: https://firebase.google.com/docs/cli'
    exit 1
fi

echo 'Building the Sphinx site...'
make html

echo 'Publishing the site to Firebase hosting...'
firebase deploy

echo 'Done.'
