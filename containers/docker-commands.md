docker build -t counter-image -f Dockerfile .

docker run -it --rm counter-image

docker run -d \
  --name devtest \
  --mount source=myvol2,target=/app \
  nginx:latest