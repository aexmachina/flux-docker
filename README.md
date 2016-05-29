```bash
docker build -t nvbclient .
docker run -it nbvclient /bin/bash
```

```bash
python3 setup.py develop
initialize_nvb_client_db development.ini
pserve development.ini
```
