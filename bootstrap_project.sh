#!/bin/bash
# Simple script to create a Spring Boot contact manager project structure

mkdir -p src/main/java/com/contactmanager/{controllers,models,repositories,services}
mkdir -p src/main/resources
mkdir -p src/test/java/com/contactmanager

# Create main application file
cat <<EOF > src/main/java/com/contactmanager/ContactManagerApplication.java
package com.contactmanager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ContactManagerApplication {
    public static void main(String[] args) {
        SpringApplication.run(ContactManagerApplication.class, args);
    }
}
EOF

# Create application.properties
cat <<EOF > src/main/resources/application.properties
spring.datasource.url=jdbc:postgresql://localhost:5432/contactdb
spring.datasource.username=contactuser
spring.datasource.password=testpass123
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
EOF

echo "Project bootstrap completed!"
