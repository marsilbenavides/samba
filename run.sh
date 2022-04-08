#! /bin/bash
docker stop "samba"
docker rm "samba"

# Run
sudo docker run -it --name "samba" -p 139:139 -p 445:445 -d dperson/samba -p \
  -u "projects;prj01" \
  -s "Projects;/mnt/nfs/Projects/;yes;no;no;projects" \
  -w ROCKGROUP
