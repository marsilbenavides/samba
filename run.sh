#! /bin/bash
docker stop "samba"
docker rm "samba"

# Run
docker run -it --name "samba" \
  -p 139:139 -p 445:445 \
  -v /mnt/smb/Projects:/mnt/smb/Projects \
  -d dperson/samba -p \
    -n \
    -u "projects;prj01" \
    -s "Projects;/mnt/smb/Projects;yes;no;yes;projects" \
    -w "ROCKGROUP"
