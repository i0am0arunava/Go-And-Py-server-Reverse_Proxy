# 🚀 Multi-Service Reverse Proxy with Docker Compose

This project runs two backend services (Go and Python) behind an NGINX reverse proxy using Docker Compose.  
All services are containerized, health-checked, and accessible via a single port.

---

## 🛠 Setup Instructions

### 1. Prerequisites
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### 2. Clone and Run

```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
docker-compose up --build
```

---

## 🔁 How Routing Works

The NGINX container listens on `http://localhost:8080` and routes:

| URL                            | Target Service         | Description             |
|--------------------------------|------------------------|-------------------------|
| `/service1/`                   | Go Service (port 8001) | Root and APIs           |
| `/service2/`                   | Python Service (8002)  | Root and APIs           |

Examples:
- `http://localhost:8080/service1/ping`
- `http://localhost:8080/service2/hello`

Routing is handled via **path prefixes** in the NGINX config.

---

## 🏆 Bonus Features Implemented

✅ **Health Checks**  
Each service is monitored using Docker healthchecks via `/health` endpoints.

✅ **Modular Docker Setup**  
Separate `Dockerfile` and config for each service, using a shared `bridge` network.

✅ **Logging**  
NGINX logs every incoming request with timestamp and path.

✅ **Automated Test Script**

Run to verify all endpoints work:

```bash
chmod +x test.sh
./test.sh
```

---

## 📁 Folder Structure

```
.
├── docker-compose.yml
├── nginx/
│   ├── Dockerfile
│   └── nginx.conf
├── service_1/
│   ├── Dockerfile
│   └── main.go
├── service_2/
│   ├── Dockerfile
│   └── app.py
├── test.sh
└── README.md
```

---

## 👨‍💻 Author

Built with ❤️ by [Your Name](https://github.com/your-username)
