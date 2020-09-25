Ubuntu 32 bits XRDP Desktop in Docker [https://hub.docker.com/r/osmar85/ubuntuxrdp](https://hub.docker.com/r/osmar85/ubuntuxrdp) 

## take a look

```bash
docker container run --hostname ubuntuxrd --name ubuntuxrd --restart always -p 3310:3389 -it osmar85/ubuntuxrdp:1.0
```
and then

```bash
root@ubuntuxrd:/# sh /etc/init.d/personalstartup.sh
```

and then

![mstsc](https://github.com/osmar85/ubuntuxrdp/blob/master/mstsclogin.png)

and then 

Enjoy!!
