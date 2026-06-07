# 🚀 Hospital Management System - Complete Deployment Guide

## Overview
This guide will help you deploy your Hospital Management System online with public access links.

We'll deploy:
- **Backend**: Spring Boot REST API → **Render.com** (free tier)
- **Frontend**: Angular Web App → **Vercel** (free tier)
- **Database**: MySQL → **Railway.app** (free tier with credits)

---

## ✅ Prerequisites
- GitHub account (https://github.com)
- Render.com account (https://render.com)
- Vercel account (https://vercel.com)
- Railway.app account (https://railway.app)

---

## 📋 Step 1: Push Your Code to GitHub

1. **Initialize Git Repository** (if not already done):
   ```bash
   cd c:\Users\pc\Desktop\Hospital-Management-System-with-AI-Assistant-using-Springboot-main
   git init
   git add .
   git commit -m "Initial commit: Hospital Management System"
   ```

2. **Create GitHub Repository**:
   - Go to https://github.com/new
   - Repository name: `Hospital-Management-System`
   - Make it **Public** (required for free deployment)
   - Click "Create repository"

3. **Push to GitHub**:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/Hospital-Management-System.git
   git branch -M main
   git push -u origin main
   ```

---

## 🗄️ Step 2: Set Up MySQL Database on Railway.app

1. **Sign up/Login** to https://railway.app

2. **Create a New Project**:
   - Click "+ New Project"
   - Select "Provision MySQL"

3. **Configure MySQL**:
   - Wait for database to be provisioned
   - Go to the MySQL service
   - Click "Connect" tab
   - Copy the connection string that looks like:
     ```
     mysql://user:password@host:port/database
     ```
   - Save this URL (you'll need it for the backend)

4. **Get Database Credentials**:
   - In Railway, go to the Variables tab
   - You'll see: `MYSQL_URL`, `MYSQL_USER`, `MYSQL_PASSWORD`
   - Save these values

---

## 🔧 Step 3: Deploy Backend to Render.com

1. **Go to https://render.com** and login

2. **Connect GitHub**:
   - Click "New +"
   - Select "Web Service"
   - Select "Connect a GitHub repository"
   - Authorize GitHub and select your `Hospital-Management-System` repository

3. **Configure the Web Service**:
   - **Name**: `hospital-management-api`
   - **Environment**: `Java`
   - **Build Command**: 
     ```
     mvn clean package -DskipTests
     ```
   - **Start Command**: 
     ```
     java -Dserver.port=$PORT -jar target/Hospital-Management-System-0.0.1-SNAPSHOT.jar
     ```
   - **Root Directory**: `Backend/Hospital-Management-System`

4. **Add Environment Variables**:
   - Click "Advanced"
   - Add these environment variables:
     ```
     DB_URL = mysql://user:password@your-railway-host:3306/railway
     DB_USERNAME = root
     DB_PASSWORD = your_password
     PORT = 8080
     ```
   - Use the values from Railway.app MySQL service

5. **Deploy**:
   - Click "Create Web Service"
   - Wait for deployment (5-10 minutes)
   - Once deployed, you'll get a URL like: `https://hospital-management-api.onrender.com`
   - **Copy this URL** (you need it for the frontend)

---

## 🎨 Step 4: Update Frontend Configuration

1. **Update Environment File**:
   - Open: `Frontend/Hospital_UI/src/environments/environment.prod.ts`
   - Replace `YOUR_BACKEND_URL` with your Render backend URL:
     ```typescript
     export const environment = {
       production: true,
       apiUrl: 'https://hospital-management-api.onrender.com/api/v1'
     };
     ```

2. **Commit and Push**:
   ```bash
   git add .
   git commit -m "Update backend URL for production"
   git push
   ```

---

## 🌐 Step 5: Deploy Frontend to Vercel

1. **Go to https://vercel.com** and login

2. **Import Project**:
   - Click "New Project"
   - Select "Import Git Repository"
   - Select your `Hospital-Management-System` repository

3. **Configure Project**:
   - **Framework Preset**: Select "Angular"
   - **Root Directory**: Select `Frontend/Hospital_UI`
   - **Build Command**: `npm run build`
   - **Output Directory**: `dist/hospital_ui` (or check your angular.json)

4. **Deploy**:
   - Click "Deploy"
   - Wait for deployment (3-5 minutes)
   - You'll get a URL like: `https://hospital-management-system.vercel.app`

---

## ✅ Step 6: Test Your Deployed Application

1. **Open Frontend URL**:
   - https://hospital-management-system.vercel.app

2. **Test API Connection**:
   - Try to create a patient or view appointments
   - Check browser console for any errors

3. **Troubleshooting**:
   - If API calls fail, check:
     - Backend is running on Render
     - Environment variables are correctly set
     - CORS is enabled in SecurityConfig.java

---

## 🔗 Your Public URLs

After deployment, you'll have:

- **Frontend (Web App)**:  
  https://hospital-management-system.vercel.app
  
- **Backend (API)**:  
  https://hospital-management-api.onrender.com
  
- **Database**:  
  MySQL on Railway.app

---

## 📱 Share Your App

You can now share the frontend URL with anyone:
```
https://hospital-management-system.vercel.app
```

They can use the app immediately without installing anything!

---

## 🐛 Common Issues & Solutions

### Issue: CORS Error
**Solution**: Make sure CORS is enabled in `SecurityConfig.java` and the frontend URL is added to allowed origins.

### Issue: 502 Bad Gateway
**Solution**: Check if the backend is running on Render. Wait 2-3 minutes for it to start.

### Issue: Database Connection Failed
**Solution**: Verify `DB_URL`, `DB_USERNAME`, and `DB_PASSWORD` environment variables are correct in Render.

### Issue: Frontend shows blank page
**Solution**: Check the browser console for errors. Verify `environment.prod.ts` has the correct backend URL.

---

## 🔄 Future Updates

To update your deployed app:

1. Make changes to your code
2. Commit and push to GitHub:
   ```bash
   git add .
   git commit -m "Your message"
   git push
   ```
3. Render and Vercel automatically redeploy your changes!

---

## 📚 Additional Resources

- [Render Documentation](https://render.com/docs)
- [Vercel Documentation](https://vercel.com/docs)
- [Railway.app Documentation](https://railway.app)
- [Spring Boot Deployment Guide](https://spring.io/guides/gs/spring-boot/)
- [Angular Production Build](https://angular.io/guide/build)

---

**Congratulations! Your Hospital Management System is now live on the internet!** 🎉

Questions? Check the troubleshooting section or refer to the service documentation.
