docker-cfssl
============


Build
-----

To create the image `bbinet/cfssl`, execute the following command in the
`docker-cfssl` folder:

    docker build -t bbinet/cfssl .

You can now push the new image to the public registry:
    
    docker push bbinet/cfssl


Run
---

Then, when starting your cfssl container, you will want to bind ports `8888`
from the cfssl container to a host external port.

For example:

    $ docker pull bbinet/cfssl

    $ docker run --name cfssl \
        -v /etc/cfssl:/etc/cfssl \
        -p 80:80 \
        bbinet/cfssl
        /usr/bin/multirootca ...
