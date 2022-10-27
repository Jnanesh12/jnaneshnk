if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/movies-universe /vps
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /vps
fi
cd
pip3 install -U -r requirements.txt
echo "Starting Bot url...."
python3 bot.py
