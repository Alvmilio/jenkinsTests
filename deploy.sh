#Backend deploy script
ssh ubuntu@ec2-18-206-168-172.compute-1.amazonaws.com <<EOF
 cd AyD1
 cd AyD_Proyecto_G5
 cd BackEnd
 git checkout develop
 git pull
 npm install
 tsc
 pm2 restart all
 exit
EOF