echo "cloning\n"
git clone https://github.com/Shshshhj/Ultroid6.git
echo "Cloned Successfully.\n"
pip3 install --no-cache-dir -r requirements.txt
wget https://git.io/JWdOk -O addons.txt
pip3 install --no-cache-dir -r addons.txt
rm -rf /usr/local/lib/python3.9/site-packages/.wh
