sudo rm -rf ~/bin/repo
mkdir -p ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo "Script Succeeded"
