PATH=~/bin:$PATH
sudo rm -rf ~/bin/repo
mkdir ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo "Script Succeeded"
