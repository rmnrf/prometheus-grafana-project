## Prometheus-grafana-project

![image](https://user-images.githubusercontent.com/24195286/181587774-d91ed0e2-d5d0-4c5b-8e24-8910a57f8340.png)


- Nginx
- Prometheus/Grafana
- EFK Stack
- Cadvisor
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

If you using WSL2 with Windows Docker:
https://github.com/google/cadvisor/issues/2648

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
127.0.0.1 cadvisor.test.com
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
