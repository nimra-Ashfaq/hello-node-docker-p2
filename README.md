# hello-node-docker-p2
 explanation and the output for each command:

1.docker image
Explanation (Short):Lists all Docker images on your local machine, showing repository, tag, ID, creation date, and size.

Output:
    REPOSITORY                                  TAG                 IMAGE ID            CREATED             SIZE
    my-hello-image                              latest              5474e78c62cc        About an hour ago   1.1GB
    my-modified-hello-image                     v1.1                a5896daaabc1        About an hour ago   1.1GB
    nimi707/hello-node                          latest              01f3fd7ae8bd        24 hours ago        1.1GB
    hello-world                                 latest              1cd46ac04808        4 days ago          123MB
    nimi707/hello-world                         latest              1cd46ac04808        4 days ago          123MB
    your_dockerhub_username/hello-world         latest              1cd46ac04808        4 days ago          123MB
    jenkins/jenkins                             latest              eb8fcafb6c85        7 days ago          465MB
    jenkins/jenkins                             lts-jdk17           67145d86049c        13 days ago         470MB
    
-----------------------------------------------------------------------------------------------------------------------------
2. docker run --name my-hello-container my-hello-image:latest

this command Creates and starts a container named `my-hello-container` using the `my-hello-image:latest` image.
Output:
    > hello-node-docker@1.0.0 start
    > node app.js

    Server running on http://localhost:3000
  ----------------------------------------------------------------------------------------------------------------------------  

3. docker ps
Lists all currently running Docker containers, showing details like ID, image, status, and ports.
 Output:
    
    CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS              PORTS                    NAMES
    f02078137cad        my-hello-image:latest     "docker-entrypoint.s…"   About an hour ago   Up 3 minutes        3000/tcp               my-hello-container
    8f46b6c92e5f        nimi707/hello-node        "docker-entrypoint.s…"   20 hours ago        Up About an hour    0.0.0.0:3000->3000/tcp   hello-container
    
------------------------------------------------------------------------------------------------------------------------------------
4. docker stop my-hello-container

 Sends a signal to gracefully stop the `my-hello-container`.
Output: 
    my-hello-container
-------------------------------------------------------------------------------------------------------------------------------------    

5. docker rm my-hello-container

 Removes the stopped `my-hello-container`.
Output:
    my-hello-container
  
--------------------------------------------------------------------------------------------------------------------------------------
6.docker logs my-hello-container
Shows the logs of the `my-hello-container`.
Output:
    > hello-node-docker@1.0.0 start
    > node app.js
    Server running on http://localhost:3000
    
--------------------------------------------------------------------------------------------------------------------------------------
7. docker inspect my-hello-container

Displays detailed information about the `my-hello-container` in JSON format.
 Output:(A long JSON output - include a snippet showing key info like `Id`, `State`, `Config`, `NetworkSettings`)
    ```json
    [
      {
        "Id": "f02078137cad6fa2d75c51a0a5829acbd4b9a171abccf7c8a6179776df69f907",
        "Created": "2025-04-15T14:51:39.552113959Z",
        "State": {
          "Status": "running",
          "Running": true,
          // ... other state info
        },
        "Config": {
          "Hostname": "f02078137cad",
          // ... other config
        },
        "NetworkSettings": {
          "IPAddress": "172.17.0.3",
          // ... other network settings
        }
        // ... more details
      }
    ]
    ```
-------------------------------------------------------------------------------------------------------------------------------------
8. docker exec -it my-hello-container bash

Executes a Bash shell inside the running `my-hello-container` interactively.
Output:
    root@f02078137cad:/app#
--------------------------------------------------------------------------------------------------------------------------------------
9. docker commit my-hello-container my-modified-hello-image:v1.1

Creates a new image `my-modified-hello-image:v1.1` from the changes in `my-hello-container`.
Output:
    sha256:a5896daaabc1ee73963c6e186f8e9d09e22e92759ede915c3926458455c6ce10
--------------------------------------------------------------------------------------------------------------------------------------   
10. docker cp my-hello-container:/app/my_new_file.txt C:\Users\USER.NEW-PC\Desktop\docker_backup\
Copies `my_new_file.txt` from the container to your local `docker_backup` folder.
Output:
    Successfully copied 1.54kB to C:\Users\USER.NEW-PC\Desktop\docker_backup\
---------------------------------------------------------------------------------------------------------------------------------------   
11.docker stats my-hello-container
Displays live resource usage statistics for `my-hello-container`.
Output:
    CONTAINER ID        NAME                  CPU %               MEM USAGE / LIMIT     MEM %               NET I/O             BLOCK I/O           PIDS
    f02078137cad        my-hello-container      0.00%               34.39MiB / 1.88GiB    1.79%               746B / 0B           0B / 0B             20
----------------------------------------------------------------------------------------------------------------------------------------
12.docker top my-hello-container
Shows the running processes inside `my-hello-container`.
 Output:
    UID                 PID                 PPID                C                   STIME                TTY                 TIME                CMD
    root                696                 676                 0                   14:51                ?                   00:00:00            npm start
    root                730                 696                 0                   14:51                ?                   00:00:00            sh -c node app.js
    root                731                 730                 0                   14:51                ?                   00:00:00            node app.js
    root                748                 676                 0                   14:55                pts/0               00:00:00            sh
----------------------------------------------------------------------------------------------------------------------------------------
13. docker start my-hello-container
Starts the stopped `my-hello-container`.
Output:
    my-hello-container
----------------------------------------------------------------------------------------------------------------------------------------
14.docker pause my-hello-container
 Suspends all processes in the running `my-hello-container`.
Output:
    my-hello-container
 ---------------------------------------------------------------------------------------------------------------------------------------
15. docker unpause my-hello-container
Resumes all paused processes in `my-hello-container`.
 Output:
    my-hello-container
-----------------------------------------------------------------------------------------------------------------------------------------
16.docker kill my-hello-container
Forcefully stops the running `my-hello-container`.
Output:
    my-hello-container
  

