## Prometheus-grafana-project

- Nginx
- Prometheus/Grafana
- Exporters
- PostgreSQL database
- Java backend (Spring Boot)
- Angular frontend

---

### Prerequisites

In order to run this application you need to install two tools: **Docker** & **Docker Compose**.

Instructions how to install **Docker** on [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/), [Windows](https://docs.docker.com/docker-for-windows/install/), [Mac](https://docs.docker.com/docker-for-mac/install/).

**Docker Compose** is already included in installation packs for *Windows* and *Mac*, so only Ubuntu users needs to follow [this instructions](https://docs.docker.com/compose/install/).


### How to run it?

Add to /etc/hosts:

```
127.0.0.1 test.com
127.0.0.1 kanban.test.com
127.0.0.1 pgadmin.test.com
127.0.0.1 swagger.test.com
127.0.0.1 prometheus.test.com
127.0.0.1 grafana.test.com
127.0.0.1 nginx.test.com
127.0.0.1 kibana.test.com
```

The entire application can be run with a single command on a terminal:

```
$ docker-compose up -d
```

If you want to stop it, use the following command:

```
$ docker-compose down
```

---
