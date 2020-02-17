Realtime (Push) notifications based on Redis pub/sub, node.js and socket.io
===========================================================================

The aim of this example is to provide a small guide for implementing 
realtime notifications based on redis and socket.io (with node.js)

Schema
------

Client that pushes notifications -> Redis -> Node.js/Socket.io -> User browser
   

Requirements
------------

- [Node](http://nodejs.org/)
- [Redis](http://redis.io)

Running
-------

In the project folder install [socket.io](http://socket.io/) and node [redis client](https://github.com/mranney/node_redis):

    npm install socket.io redis

Start the redis database:

    $ redis-server

Start the push notifications server:

    $ node ./app.js

Start the client node server:

    $ cd ./test-client
    $ node ./client.js

Open a browser and go to 127.0.0.1:8000, enter the id that you want and we are
ready to push some notifications.

Open a redis client:

    $ redis-cli

And with this key **push:notifications:[ID-HERE]** we publish messages into redis.
    
    $ PUBLISH "push:notifications:vishnu" '{"did":"1234567","x":300,"y":50,"z":0}'

So all the published messages in the appropiate redis channels, will be
pushed to the user browser in realtime :)


Now we should see the message "{"did":"1234567","x":300,"y":50,"z":0}" in the message list

