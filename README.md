# InfluxDB for railway.app

![Template Header](./template-header.svg)


Deploy influxdb on railway

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/fwbafn?referralCode=2_sIT9&utm_medium=integration&utm_source=template&utm_campaign=generic)

## ✨ Features

* InfluxDB with automated setup
* InfluxDB UI
* Password Authentication
* Automatic updates via Railway Template System
* Health monitoring
* Optimized production settings

## 🚀 Quick Start

1. Click "Deploy on Railway"
2. Configure environment variables
3. Wait for build and deployment process
4. Open the provided URL

## ⚙️ Configuration

### Required Environment Variables

```bash
DOCKER_INFLUXDB_INIT_USERNAME=yourusername     # Minimum 5 characters
DOCKER_INFLUXDB_INIT_PASSWORD=yourpassword     # Minimum 8 characters
DOCKER_INFLUXDB_INIT_ORG=yourorg              # Minimum 5 characters
DOCKER_INFLUXDB_INIT_BUCKET=yourbucket        # Minimum 5 characters
DOCKER_INFLUXDB_INIT_ADMIN_TOKEN=yourtoken     # Minimum 50 characters
DOCKER_INFLUXDB_INIT_MODE=setup               # Do not change
PORT=8086                                     # Do not change
```

### Optional Configurations

* `INFLUXDB_RETENTION`: Data retention period (default: 30d)
* `INFLUXDB_REPLICATION`: Replication factor (default: 1)

## 👩‍💻 Usage

### Setting up Connection

1. Use your custom URL as the host
2. **Important**: The port is 443
   Example: `https://demo-influxdb.up.railway.app:443`
3. Authenticate using the token from environment variables
4. Use bucket and organization names from environment variables

### Compatibility

* InfluxDB version 2.0 or higher
* Supports all common InfluxDB clients

## 🔄 Updates

This template supports automatic updates via the Railway Template System. Updates are automatically checked and can be applied via pull requests.

## 🐳 Local Development

```bash
# Clone repository
git clone https://github.com/vergissberlin/railwayapp-influxdb.git

# Change directory
cd railwayapp-influxdb

# Start container
docker compose up -d
```

Access http://localhost:8086 with credentials from docker-compose.yml

## 🧪 Testing

```bash
# Run unit tests
npm test

# Run integration tests
npm run test:integration
```

## 🪲 Troubleshooting

### Common Issues

1. **Connection Errors**
   - Check port configuration (443)
   - Ensure token is correct

2. **Authentication Errors**
   - Verify environment variables
   - Ensure minimum lengths are met

### Bug Reporting

If you find a bug:
1. [Create an issue](https://github.com/vergissberlin/railwayapp-influxdb/issues/new)
2. Submit a pull request with a fix

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open pull request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🔒 Security

* All sensitive data is stored as environment variables
* Automatic SSL/TLS encryption
* Regular security updates

## Railway runtime defaults

The template includes `railway.toml` defaults for reliable operations:

* Healthcheck path: `/health`
* Restart policy: `ON_FAILURE` with retries
* Dockerfile-based build

## 📚 Resources

* [InfluxDB Documentation](https://docs.influxdata.com/)
* [Railway Documentation](https://docs.railway.app/)
* [Template Updates](https://docs.railway.com/reference/templates#updatable-templates)

<!-- footer -->
<!-- footer -->

---
[![Airbyte](https://img.shields.io/badge/Airbyte-615EFF?style=for-the-badge&logo=airbyte&logoColor=white)](https://github.com/vergissberlin/railwayapp-airbyte) [![Apache Airflow](https://img.shields.io/badge/Apache%20Airflow-017CEE?style=for-the-badge&logo=apacheairflow&logoColor=white)](https://github.com/vergissberlin/railwayapp-airflow) [![CodiMD](https://img.shields.io/badge/CodiMD-0F766E?style=for-the-badge&logo=markdown&logoColor=white)](https://github.com/vergissberlin/railwayapp-codimd) [![Django](https://img.shields.io/badge/Django-092E20?style=for-the-badge&logo=django&logoColor=white)](https://github.com/vergissberlin/railwayapp-django) [![Email Service](https://img.shields.io/badge/Email%20Service-2563EB?style=for-the-badge&logo=maildotru&logoColor=white)](https://github.com/vergissberlin/railwayapp-email) [![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white)](https://github.com/vergissberlin/railwayapp-fastapi) [![Flask](https://img.shields.io/badge/Flask-3fad48?style=for-the-badge&logo=flask&logoColor=white)](https://github.com/vergissberlin/railwayapp-flask) [![Flowise](https://img.shields.io/badge/Flowise-4F46E5?style=for-the-badge&logo=nodedotjs&logoColor=white)](https://github.com/vergissberlin/railwayapp-flowise) [![GitLab CE](https://img.shields.io/badge/GitLab%20CE-FC6D26?style=for-the-badge&logo=gitlab&logoColor=white)](https://github.com/vergissberlin/railwayapp-gitlab) [![Grafana](https://img.shields.io/badge/Grafana-F46800?style=for-the-badge&logo=grafana&logoColor=white)](https://github.com/vergissberlin/railwayapp-grafana) [![Home Assistant](https://img.shields.io/badge/Home%20Assistant-18BCF2?style=for-the-badge&logo=homeassistant&logoColor=white)](https://github.com/vergissberlin/railwayapp-homeassistant) [![InfluxDB](https://img.shields.io/badge/InfluxDB-22ADF6?style=for-the-badge&logo=influxdb&logoColor=white)](https://github.com/vergissberlin/railwayapp-influxdb) [![MongoDB](https://img.shields.io/badge/MongoDB-47A248?style=for-the-badge&logo=mongodb&logoColor=white)](https://github.com/vergissberlin/railwayapp-mongodb) [![Mosquitto MQTT](https://img.shields.io/badge/Mosquitto%20MQTT-3C5280?style=for-the-badge&logo=eclipsemosquitto&logoColor=white)](https://github.com/vergissberlin/railwayapp-mqtt) [![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://github.com/vergissberlin/railwayapp-mysql) [![n8n](https://img.shields.io/badge/n8n-EA4B71?style=for-the-badge&logo=n8n&logoColor=white)](https://github.com/vergissberlin/railwayapp-n8n) [![Node-RED](https://img.shields.io/badge/Node-RED-8F0000?style=for-the-badge&logo=nodered&logoColor=white)](https://github.com/vergissberlin/railwayapp-nodered) [![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)](https://github.com/vergissberlin/railwayapp-nodejs) [![OpenSearch](https://img.shields.io/badge/OpenSearch-005EB8?style=for-the-badge&logo=opensearch&logoColor=white)](https://github.com/vergissberlin/railwayapp-opensearch) [![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)](https://github.com/vergissberlin/railwayapp-postgresql) [![Redis](https://img.shields.io/badge/Redis-DC382D?style=for-the-badge&logo=redis&logoColor=white)](https://github.com/vergissberlin/railwayapp-redis) [![TYPO3 CMS](https://img.shields.io/badge/TYPO3%20CMS-FF8700?style=for-the-badge&logo=typo3&logoColor=white)](https://github.com/vergissberlin/railwayapp-typo3)
