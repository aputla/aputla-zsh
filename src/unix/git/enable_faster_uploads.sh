# Run the following commands on the bare repository (on the server)

git config --add pack.windowMemory 100m
git config --add pack.packSizeLimit 100m
git config --add core.bigFileThreshold 1

echo "*.pdf -delta" > info/attributes
echo "*.jpg -delta" > info/attributes
echo "*.jpeg -delta" >> info/attributes
echo "*.mts -delta" >> info/attributes
echo "*.mp4 -delta" >> info/attributes
echo "*.mov -delta" >> info/attributes
echo "*.mp3 -delta" >> info/attributes
echo "*.vob -delta" >> info/attributes
echo "*.zip -delta" >> info/attributes

git repack -a -d -F --window-memory 100m --max-pack-size 100m

git gc

# export the repository through git daemon
touch git-daemon-export-ok
