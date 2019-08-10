git add .
git add *
git commit -m "Update blog"
git push origin mt-theme-v1

# cd gh-pages
cd ../gh-pages/
git checkout gh-pages
if [ -d ".git" ]; 
then
    git rm -rf .
    git clean -fxd
else
    git init
    git remote add origin https://github.com/huynhminhtan/mtsinichi.github.io.git
    git config user.name "Huynh Minh Tan"
    git config user.email "minhtan.itdev@gmail.com"
fi

# copy to gh-pages
cd ../master/
if [ -d "_site" ]; then
    cp -R ./_site/* ../gh-pages
fi

# push to gh-pages branch
cd ../gh-pages/
git checkout gh-pages
git add .
git add *
git commit -m "Update blog"
git push -u origin gh-pages

cd ../master/