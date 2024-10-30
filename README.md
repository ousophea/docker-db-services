**Project Overview**

This project sets up a Docker environment with a MySQL database and a PHPMyAdmin interface, connected via an external network.

**Prerequisites**

* Docker installed and running
* Docker Compose installed and running

**Getting Started**

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/ousophea/docker-db-services.git
   cd docker-db-services
   ```

2. **Start the Services:**
   ```bash
   docker-compose up -d
   ```

**Accessing the Services**

* **MySQL:**
  - Connect to the MySQL container using a MySQL client tool like `mysql` or a GUI tool like Workbench.
  - **Host:** `sample_mysql`
  - **Port:** 3306
  - **Username:** root
  - **Password:** root
* **PHPMyAdmin:**
  - Open your web browser and navigate to: `http://localhost:8383`

**Additional Notes**

* **SQL Script:** The `create_sample_user_table.sql` script will be executed automatically during the container startup to create a sample user table.
* **Data Persistence:** The `sample_mysql` volume persists the MySQL data on your host machine.
* **Network Configuration:** The `external_network` allows both containers to communicate with each other.
* **PHPMyAdmin Configuration:** The `phpmyadmin` container is configured to connect to the `sample_mysql` container.

**Troubleshooting**

If you encounter any issues, please refer to the Docker and Docker Compose documentation for troubleshooting tips. You can also check the Docker logs for more information:

```bash
docker-compose logs
```

