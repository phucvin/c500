cd ..

python compiler.py test/t01.c > test/t01.wat

sudo apt install bat

mkdir -p ~/.local/bin

ln -s /usr/bin/batcat ~/.local/bin/bat

npm install -g @irongeek/wabt

curl https://get.wasmer.io -sSfL | sh

source /home/codespace/.wasmer/wasmer.sh

./run-test test/t01.c

git clone https://github.com/c-testsuite/c-testsuite

./run-all