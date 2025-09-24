# simple-jenkins-pipeline
# Simple Jenkins Pipeline for CI/CD 🚀

## 📌 Objective
This project demonstrates a **basic Jenkins CI/CD pipeline** that:
- Builds a Docker image
- Runs simple tests
- Deploys a containerized Node.js app

---

## ⚙️ Steps Performed
1. Created a simple **Node.js Express app**
2. Wrote a **Dockerfile** to containerize the app
3. Added a **Jenkinsfile** with stages:
   - Checkout
   - Build
   - Test
   - Deploy
4. Configured Jenkins job to trigger on commits

---

## 🖼️ Screenshots
(Add Jenkins pipeline run screenshots, DockerHub image, or app running in browser)

---

## 🚀 Run Locally
```bash
git clone https://github.com/rajendra-pm/simple-jenkins-pipeline.git
cd simple-jenkins-pipeline
docker build -t simple-jenkins-pipeline .
docker run -p 3000:3000 simple-jenkins-pipeline
