项目目录

git remote -v

Assume that you have the settings as the following:
origin  	https://github.com/[username]/projectX (fetch)
origin		https://github.com/[username]/projectX (push)
upstream	https://github.com/voluncation/projectX.git (fetch)
upstream	https://github.com/voluncation/projectX.git (push)

Checkout the latest version of the code from github in 3 steps:
1) git fetch upstream master
2) git checkout master
3) git merge upstream/master

You might have some conflicts during the merge. Dont worry, it happens often.
Just resolve the conflicts by editing those files in question manually, then do

git add [fileName]
git commit -m [comment]

Finally, if you want to sync you own repo on github with central repo as well, 
please do

git push origin master

------------------------------------------------------------------------------------------

If you want to propagate your own changes to the central repo, please create a pull request 
from the web UI of github. Of course, those changes must be pushed from your local repo to
your own github repo at first by doing

git push origin master

Note:
*All the above commands should be run under your project root.