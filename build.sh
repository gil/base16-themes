# update 
git submodule update --init --recursive --rebase
pip install pybase16-builder --upgrade

# build
pybase16 build

# vim airline fix
cd output/base16-vim-airline
../../templates/base16-vim-airline/fix-dashes.sh
rm -rf autoload/airline
mkdir -p autoload/airline
mv themes autoload/airline/
