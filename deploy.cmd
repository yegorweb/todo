del /q dist/*.*
yarn build
cd dist
git init
git checkout -b main
git add -A
git commit -m 'deploy'

git push -f https://github.com/yegych9923/todo.git main:gh-pages

cd ..