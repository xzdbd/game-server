Game-Server
===========

##[koolshare](http://koolshare.cn/forum-72-1.html)的[小宝](http://koolshare.cn/space-uid-2380.html) 宝大开发的游戏系列服务器（SS），支持udp in udp和udp in tcp模式，完美支持游戏NAT2。

------

### Use It in Docker Environment

1. Prepare a config.json file

    {
        "server":"0.0.0.0",
        "local_port":1080,
        "timeout": 600,
        "method":"chacha20",
        "port_password":
        {
            "port1": "password1",
            "port2": "password2"
        },
        "_comment":
        {
            "port1": "desc1",
            "port2": "desc2"
        }
    }

2. Run 

```
docker run -d -p {port}:{port} -p {port}:{port}/udp -v {local_path}/config.json:/usr/local/game-server/config.json xzdbd/game-server

```