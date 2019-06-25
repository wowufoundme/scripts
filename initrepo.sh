sudo rm -rf ~/bin/repo
mkdir -p ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo "Script Succeeded"
PATH=~/bin:$PATH
