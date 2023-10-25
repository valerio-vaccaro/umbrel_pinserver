# Umbrel Pinserver
Docker need a custom builder in order to builf multiple images.

```
docker buildx create --name mycustombuilder --driver docker-container --bootstrap
docker buildx use mycustombuilder
```

## Blind pin server image 
Create and upload an image for pinserver.

```
git clone https://github.com/Blockstream/blind_pin_server.git
cd  blind_pin_server
docker buildx build --platform "linux/arm64,linux/amd64" --tag "tulipan81/blind_pin_server:v0.0.1" --output "type=registry" .
```

## Umbrel pinserver web interface
Umbrel pinserver web interface is available at https://gl.blockstream.io/valerio-vaccaro/umbrel_pinserver_web and contains a flask app running on port 8095.

```
git clone git@gl.blockstream.io:valerio-vaccaro/umbrel_pinserver_web.git
cd umbrel_pinserver_web
docker buildx build --platform "linux/arm64,linux/amd64" --tag "tulipan81/pinserver_web:v0.0.1" --output "type=registry" .
```

## Logos and images
Logo and images are availbale at https://gl.blockstream.io/valerio-vaccaro/umbrel_pinserver_images.

## Umbrel app
Umbrel app (this repository) contains:
- data folder where the app will save data,
- docker-compose.yml the docker compose file able to orchestrate the 3 needed docker images (pinserver, pinserver web interface and tor)
- export.sh environment constants
- README.md this file
- torrc.template configuration for tor 
- umbrel-app.yml umbrel app configurations 

# Test locally

# Step for publish

- review and publish web interface
- publish docker image of blind pin server (maybe add a version number)
- decide graphic/style for web interface (and implement it)
- publish docker image of umbrel pinserver web interface
- create an umbrel logo
- create preview images
- merge logos/image files on umbrel repository
- merge app on umbrel repository