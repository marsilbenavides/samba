#! /bin/bash
docker stop "samba"
docker rm "samba"

# Run
sudo docker run -it -p 139:139 -p 445:445 -d dperson/samba -p \
    -u "projects;*prj*01" \
    -s "projects private share;/mnt/nfs/Projects;no;no;no;projects"
