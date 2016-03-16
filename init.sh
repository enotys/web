sudo rm -rf /etc/nginx/sites-available/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

sudo ln -sf $PWD/etc/hello.py /etc/gunicorn.d/hello.py
sudo ln -sf $PWD/etc/gjango_ask.py /etc/gunicorn.d/gjango_ask.py

sudo /etc/init.d/nginx restart
sudo /etc/init.d/gunicorn restart