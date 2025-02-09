# python_blockchain_app

A simple tutorial for developing a blockchain application from scratch in Python.

## What is blockchain? How it is implemented? And how it works?

Please read the [step-by-step implementation tutorial](https://github.com/satwikkansal/python_blockchain_app/blob/master/step_by_step_tutorial.md) to get your answers :)

## Instructions to run

Clone the project,

```sh
$ git clone https://github.com/catman85/python_blockchain_app.git
```
Install Prerequisites,

```sh
pip install flask, requests
```

Start a blockchain node server,

```sh
$ export FLASK_APP=node_server.py && flask run --port 8000
```

One instance of our blockchain node is now up and running at port 8000.

To run the application, with **hot-reload**

```sh
$ python run_app.py
```

The application should be up and running at [http://localhost:5000](http://localhost:5000)

The server is running at [http://localhost:8000](http://localhost:8000)

## Use Case

1.Write some content, click *post* and then *Request to mine* 

![ ](https://i.imgur.com/FGRRtG8.jpg)

2.Have a look at the blockchain, by clicking at *Show Chain*

![ ](https://i.imgur.com/N7fZ2mu.jpg)

3.Resyncing with the chain for updated data

![ ](https://i.imgur.com/Di00d4a.jpg)

4.Write some new content and click *post* without clicking *Request to mine*. 
 Then have a look at the pending transactions pool. 

![ ](https://i.imgur.com/uqojGk4.jpg)

To play around by spinning off multiple custom nodes, use the `add_nodes/` endpoint to register a new node. 

Here's a sample scenario that you might wanna try,

```sh
# already running
$ flask run --port 8000
# spinning up new nodes
$ flask run --port 8001
$ flask run --port 8002
```

You can use the following cURL requests to register the nodes at port `8001` and `8002` with the already running `8000`.

```sh
curl -X POST \
  http://127.0.0.1:8001/register_with \
  -H 'Content-Type: application/json' \
  -d '{"node_address": "http://127.0.0.1:8000"}'
```

```sh
curl -X POST \
  http://127.0.0.1:8002/register_with \
  -H 'Content-Type: application/json' \
  -d '{"node_address": "http://127.0.0.1:8000"}'
```

This will update the newer nodes with the longest chain, and the list of peers, so that they are able to actively participate in the mining process post registration.

To update the node with which the frontend application syncs, change `CONNECTED_NODE_ADDRESS` field in the [views.py](https://github.com/satwikkansal/python_blockchain_app/blob/master/app/views.py) file.

## Quick Startup

```sh
export FLASK_APP=node_server.py && flask run --port 8000
```

optional:
```sh optional
# spinning up new nodes
export FLASK_APP=node_server.py && flask run --port 8001
curl -X POST http://127.0.0.1:8001/register_with -H 'Content-Type: application/json' -d '{"node_address": "http://127.0.0.1:8000"}'
```

```sh
python run_app.py
```

:5000 is the client, 
:8000 is the server,

visit localhost:5000,
localhost:8000/chain,
localhost:8000/mine

