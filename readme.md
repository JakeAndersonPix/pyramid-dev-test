#Purpose
This app was created as a simple hello world server to learn basic Pyramid file structure. After creation I extended it to demonstrate hot reloading docker development.

#Usage
These commands will start the development server on `localhost:6543`.

1. `docker-compose build --no-cache`
2. `docker-compose up -d`

Now any changes to the source code in the app directory will trigger a reload of the API server. Run `docker-compose down` when you are ready to stop the server.

#How it works
The docker-compose yaml definition mounts the app directory of this project as a volume of the docker container while the `pserve` command starts a listener on the app directory. When changes are detected, pserve will automatically stop and restart the server.
