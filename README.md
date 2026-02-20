# 🚀 Kafka Demo Project

### 📖 Overview

โปรเจกต์นี้เป็นตัวอย่างระบบ Kafka Microservices Architecture
ประกอบด้วยบริการหลัก 3 ส่วน

-   Kafka Producer -- ส่งข้อมูลเข้า Kafka
-   Kafka Consumer -- รับข้อมูลจาก Kafka และบันทึกลง Database
-   Kafka Infrastructure / Docker Images -- Kafka Cluster + Tools

โครงสร้างโปรเจกต์ถูกจัดการแบบ Git Submodules เพื่อแยก service
แต่ยังรวมไว้ใน repo เดียวสำหรับการพัฒนาและทดสอบร่วมกัน

------------------------------------------------------------------------

# 📦 Project Structure

    kafka-demo
     ├ kafka-consumer
     ├ kafka-producer
     ├ kafka-images
     └ .gitmodules

รายละเอียดแต่ละ repo

-   https://github.com/Digi-OHM/kafka-consumer
-   https://github.com/Digi-OHM/kafka-producer
-   https://github.com/Digi-OHM/kafka-images

------------------------------------------------------------------------

# 📥 Clone Project (Clone ทุก Repo พร้อมกัน)

วิธีที่แนะนำ

    git clone --recurse-submodules https://github.com/Digi-OHM/kafka-demo.git

หาก clone แบบปกติ

    git clone https://github.com/Digi-OHM/kafka-demo.git

ต้องรันเพิ่ม

    git submodule update --init --recursive

------------------------------------------------------------------------

# 📥 Clone แยกแต่ละ Repository

### Kafka Consumer

    git clone https://github.com/Digi-OHM/kafka-consumer.git

### Kafka Producer

    git clone https://github.com/Digi-OHM/kafka-producer.git

### Kafka Images

    git clone https://github.com/Digi-OHM/kafka-images.git

------------------------------------------------------------------------

# 🧪 Kafka Consumer

### 📖 ภาพรวม (Overview)

Kafka Consumer เป็นแอปพลิเคชัน Spring Boot 4.0.2 (Java 25)
ที่พัฒนาเพื่อประมวลผลและจัดการข้อมูลจาก Kafka Producer และบันทึกลง
PostgreSQL

รองรับ Kafka Cluster (3 Brokers - KRaft Mode)

------------------------------------------------------------------------

# 🧩 Kafka Integration

Cluster 3 Nodes

-   kafka1 → 9094
-   kafka2 → 9095
-   kafka3 → 9096
-   Replication Factor = 3
-   Min In-Sync Replicas = 2

------------------------------------------------------------------------

### Producer

ส่งข้อมูลเข้า Kafka

### Consumer

ดึงข้อมูลออกจาก Kafka

------------------------------------------------------------------------

# 🐳 Kafka Infrastructure

โหลด Docker images

    docker load -i kafka.tar
    docker load -i kafka-ui.tar
    docker load -i mongo.tar

หรือใช้

    load-images.bat

------------------------------------------------------------------------

# 🛠 Tech Stack

-   Java 25
-   Spring Boot 4
-   Apache Kafka
-   Docker
-   PostgreSQL
-   MongoDB
