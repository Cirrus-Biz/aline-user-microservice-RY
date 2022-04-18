export MICROSERVICE=user
export APP_PORT=8070
export DB_USERNAME=root
export DB_PASSWORD=root
export DB_HOST=127.0.0.1
export DB_PORT=3306
export DB_NAME=alinedb
export ENCRYPT_SECRET_KEY='thisisagreatsecretkey!!!'
export JWT_SECRET_KEY='WmZq4t7w!z%C&F)J@NcRfUjXn2r5u8x/'
echo "Exports have been applied"
echo "Updating ${MICROSERVICE} microservice"
mvn clean install -U -DskipTests
echo "Running ${MICROSERVICE} microservice"
mvn spring-boot:run -pl ${MICROSERVICE}-microservice/