#!/bin/bash
#your application directory add it
HOME='please add the application clone directory'
cd $HOME
npm run build
az storage blob upload-batch --account-name demo --destination \$web --source $HOME/build/
