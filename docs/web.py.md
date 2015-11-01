<!-- -
Title: web.py
Description: Notes and links on the web.py framework
First Published: 2015-11-01
- -->

web.py
======

Deployment on Ubuntu 14.04
--------------------------

These instructions are a note to myself, on how to get web.py deployed on a new 
VM with Ubuntu 14.04, for development:

```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install --yes openssh-server 
sudo reboot
```

After the reboot:

```bash
sudo apt-get install --yes apache2
sudo apt-get install --yes git
sudo mkdir /opt/web.py
sudo chown `whoami`:`whoami` /opt/web.py
cd /opt/web.py
git clone git://github.com/webpy/webpy.git
ln -s `pwd`/webpy/web .
cat <<EOF > index.py
import web

urls = (
    '/(.*)', 'hello'
)
app = web.application(urls, globals())

class hello:
    def GET(self, name):
        if not name: 
            name = 'World'
        return 'Hello, ' + name + '!'

if __name__ == "__main__":
    app.run()
EOF
python index.py
```


