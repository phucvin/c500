cd ..

python compiler.py test/t01.c > test/t01.wat

use https://webassembly.github.io/wabt/demo/wat2wasm/ to test the output wat

git clone https://github.com/c-testsuite/c-testsuite

python compiler.py test/t01.c > test/t01.wat
