echo "*****************************************************************Stopping services*****************************************************************"
service apache2 stop
service mongodb stop

echo "\n\n\n\n**********************************************removing apache 2 server *******************************************************************"
apt-get remove apache2

echo "\n\n\n\n*************************************removing required dependencies for MongoDB to work **************************************************"
apt-get remove libapache2-mod-php7.2 php7.2-fpm php7.2-cgi

echo "\n\n\n\n**************************removing PHP 7, some dependencies required before removing. Be patient it will take some time ****************"
apt-get remove php7.2

echo "\n\n\n\n*******************************************removing MongoDB ******************************************************************************"
apt-get remove mongodb

echo "\n\n\n\n*****************************************removing MongoDB drivers ************************************************************************"
apt-get remove php-pear
apt-get remove php-dev
pecl remove mongodb
