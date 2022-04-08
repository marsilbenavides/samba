#! /bin/bash
docker stop "samba"
docker rm "samba"

# Run
docker run -it --name "samba" -p 139:139 -p 445:445 -d dperson/samba -p \
  -v /mnt/nfs/Projects:/mnt/nfs/Projects \
  -u "projects;prj01" \
  -s "Projects;/mnt/nfs/Projects;yes;no;no;projects" \
  -w "ROCKGROUP"
