# apachePHPMongoDB
Installation of Apache2, PHP and MongoDB using single shell script.

### setupApachePHPMongoDB.sh 
File used to install all the required dependencies for mongodb to work with PHP.

### removeApachePHPMongoDB.sh
If you need to remove all the installation you can use this file.

### vendor.zip
Sometimes we want to do fast testing for not install composer and so on, just decompress this zip file, place wherever you want and include in you PHP files. 
> require 'vendor/autoload.php'

With that you are able to use MongoDB from PHP

`Note: remember to give required permission for shell scripts to run. For example chmod a+x file.sh`
