# verify env
function pre-req-ok {
    local -n ref=$1
    if [[ `$2` == "$3" ]];
    then
      ref="true"
    else
      ref="false"
    fi
}

pre-req-ok NODE_OK "node -v" "v12.18.3"
pre-req-ok YARN_OK "yarn -v" "1.22.4"
pre-req-ok 

#if [[ `node -v` == "v12.18.3" ]];
#then
#  NODE_OK="true"
#else
#  NODE_OK="false"
#fi

echo "node ok: $NODE_OK"

# remove node
#sudo rm -rf /usr/local/bin/npm /usr/local/share/man/man1/node* /usr/local/lib/dtrace/node.d ~/.npm ~/.node-gyp 

# install node 12 lts
#brew install node@12
#echo 'export PATH="/usr/local/opt/node@12/bin:$PATH"' >> ~/.bash_profile
#source ~/.bash_profile

# install yarn globally
#npm install -g yarn

# install cdk globally
#npm install -g aws-cdk

# install python
#brew install python

# docker install (we don't need

# install aws-cli
# curl https://awscli.amazonaws.com/AWSCLIV2.pkg --output AWSCLIV2.pkg
# sudo installer -pkg ./AWSCLIV2.pkg -target /

# install aws sam cli (this is a big install; for me python3.8 got installed
# into /usr/local/Cellar/python@3.8/3.8.5
# brew tap aws/tap
# brew install aws-sam-cli

# set up env for SAM (essentially, adding python3 to path )
# which python3 | xargs echo >> ~/.bash_profile
# echo "export SAM;" >> ~/.bash_profile
# echo "export PATH=$SAM/bin:$PATH" >> ~/.bash_profile



