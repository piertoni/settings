ln -s ~/settings/.vimrc ~/.vimrc
ln -s ~/settings/.gvimrc ~/.gvimrc
ln -s ~/settings/.tmux.conf ~/.tmux.conf
ln -s ~/settings/.bash_alias ~/.bash_alias
sudo apt-get install curl

: 'file=".bash_alias"
#while IFS='' read -r line || [[ -n "$line" ]]; do
while IFS='' read -r line
do
	echo "$line" >> ~/.bashrc 
done < "$file"
'
