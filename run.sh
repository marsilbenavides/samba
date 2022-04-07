#! /bin/bash
docker stop "samba"
docker rm "samba"

# Run
sudo docker run -it -p 139:139 -p 445:445 -d dperson/samba -p \
  --name "samba" \
  -u "projects;prj01" \
  -s "projects private projects;/mnt/nfs/Projects;yes;no;no;projects" \
  -w ROCKGROUP
