# geektr-cloud/verdaccio

```bash
docker run -it --rm --name verdaccio -p 4873:4873 \
  -v "$PWD/demo/config.yaml":/verdaccio/conf/config.yaml \
  geektr-cloud/verdaccio:latest
```
