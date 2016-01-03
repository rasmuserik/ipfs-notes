rm -rf repos
mkdir repos
cd repos
for repos in `cat ../ipfsjs-repos.lst`
do
  echo $repos
  install -d $repos
  git clone https://github.com/$repos $repos
  rm -rf $repos/.git
  mv $repos `echo $repos | sed -e 's/[/]/_/'`
done
rmdir *

du -sk * | sort -rn
