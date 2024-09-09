# eps-container
contenedor docker del ubuntu de la EPS
### uso:
- construir imagen
    ```bash
    docker build -t eps-container .
    ```
- iniciar por primera vez el contenedor
    ```bash
    docker run --name <name> --mount type=bind,source=<host_workdir>,target=/usr/src/EPS -it -d eps-container
    # se inicia un contenedor con el directorio de trabajo del host sincronizado en el directorio de trabajo en el contenedor.
    ```
- acceder al contenedor:
    ```bash
    docker exec -it <name> /bin/bash
    ```
-  parar/encender contenedor:
    ```bash
    docker stop <name>
    docker start <name>
    ```
