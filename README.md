```bash
docker build -t nvbclient git@github.com:aexmachina/flux-docker.git
docker run -it nbvclient /bin/bash
```

Then inside the VM...

```bash
initialize_nvb_client_db development.ini # press Enter :)
pserve development.ini
```
