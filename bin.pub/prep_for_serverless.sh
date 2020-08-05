#!/usr/bin/env zsh

# Script to install utilities to be used for Homeslice serverless development:
# node
# yarn
# aws-cdk
# docker
# python
# aws-cli
# aws-sam-cli
# Also, updated PATH so that python3.7 is at the beginning

# remove node
rm -rf /usr/local/bin/npm /usr/local/share/man/man1/node* /usr/local/lib/dtrace/node.d ~/.npm ~/.node-gyp 

# brew it up! install all the things; tapping where necessary
brew tap aws/tap
brew install node@12 yarn aws-cdk python awscli aws-sam-cli

# OK, now let's update path: first in line python, then node
echo 'export PATH="/usr/local/opt/node@12/bin:$PATH"' >> ~/.bash_profile
echo "export SAM=`which python3`" >> ~/.bash_profile
echo "export PATH=$SAM/bin:$PATH" >> ~/.bash_profile

# Lastly, set up AWS creds for A-account
curl https://repo.forge.lmig.com/content/repositories/ets-releases/com/lmig/ets/public-cloud/aws-saml-api-keys/2.4-55/aws-saml-api-keys-2.4-55.zip --output aws-saml-api-keys-2.4-55.zip

unzip aws-saml-api-keys-2.4-55.zip
open apikeyretriever_darwin_amd64

