# InfluxDB for railway.app

Deploy influxdb on railway

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/fwbafn?referralCode=2_sIT9)

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

## 📚 Resources

* [InfluxDB Documentation](https://docs.influxdata.com/)
* [Railway Documentation](https://docs.railway.app/)
* [Template Updates](https://docs.railway.com/reference/templates#updatable-templates)
