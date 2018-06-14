echo "\n\n\n\n************************Setting up server for Monitoreo Agua Web to work on ubuntu machine.*************************************************"
echo "\n\n\n\n**************************************Fetching system updates before start***************************************************************** "
apt-get update
apt-get autoremove

echo "\n\n\n\n**********************************************Installing apache 2 server *******************************************************************"
apt-get install apache2

echo "\n\n\n\n*************************************Installing required dependencies for MongoDB to work **************************************************"
apt-get install python-software-properties
add-apt-repository ppa:ondrej/php
apt-get update
apt-get install libapache2-mod-php7.2 php7.2-fpm php7.2-cgi

echo "\n\n\n\n**************************Installing PHP 7, some dependencies required before installing. Be patient it will take some time ****************"
apt-get install php7.2

echo "\n\n\n\n*******************************************Installing MongoDB ******************************************************************************"
apt-get install mongodb

echo "\n\n\n\n*****************************************Installing MongoDB drivers ************************************************************************"
apt-get install php-pear
apt-get install php-dev
pecl install mongodb

echo "\n\n\n\n***************************************Installation success, setting mongo extension into php ini*******************************************"
isMongo=`grep -c mongodb /etc/php/7.2/apache2/php.ini`
if [ $isMongo -eq 0 ];then
        echo "\n\n\n***************************Mongo not set in php.ini, appending to file ****************************************************************"
        echo "extension=mongodb.so">> /etc/php/7.2/apache2/php.ini
fi

echo "\n\n\n\n*********************************************Installation success, restarting apache server and mongodb**************************************"
service apache2 stop
service mongodb stop

service mongodb start
service apache2 start
