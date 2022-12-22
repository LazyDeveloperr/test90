if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/LazyDeveloperr/LazyPrincess.git /LazyPrincess
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LazyPrincess
fi
cd /LazyPrincess
pip3 install -U -r requirements.txt
echo "Starting Bot...."
gunicorn -b :5000 --reload --access-logfile - --error-logfile - app:app
python3 bot.py




