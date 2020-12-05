echo " "
echo "pulling image from docker hub..."
echo " "
docker pull ntpd/ntpd
echo " "
echo " pull finished "
echo " "
echo " "
echo " running docker NTP services... "
docker run -d --restart=always -p 123:123/udp --name siro ntpd/ntpd
echo " "
echo " displaying list of running containers... "
docker ps -a
echo " "
