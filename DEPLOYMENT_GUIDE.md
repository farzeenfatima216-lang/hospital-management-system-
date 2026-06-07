# Hospital Management System - Complete Web App

A full-stack Hospital Management System built with Angular (Frontend) and Spring Boot (Backend).

## 🚀 Quick Deploy

### Backend Deployment (Render.com)
1. Go to [Render.com](https://render.com)
2. Connect your GitHub repository
3. Create a new Web Service
4. Set Build Command: `mvn clean package`
5. Set Start Command: `java -Dserver.port=$PORT -jar target/Hospital-Management-System-0.0.1-SNAPSHOT.jar`
6. Add Environment Variables:
   - `DB_URL`: Your MySQL database URL
   - `DB_USERNAME`: Database username
   - `DB_PASSWORD`: Database password
   - `PORT`: 8080 (or any port)

### Frontend Deployment (Vercel)
1. Go to [Vercel.com](https://vercel.com)
2. Import your GitHub repository
3. Select the `Frontend/Hospital_UI` directory
4. Deploy! Vercel will automatically detect Angular and configure the build.

## ✨ Features

- **Patient Management**: Add, update, view, and delete patient records
- **Doctor Management**: Maintain doctor details and schedules
- **Appointments**: Book, track, and manage appointments
- **AI Assistant**: Medical-related questions support
- **Spring Security**: Custom authentication and authorization
- **Responsive UI**: Works on desktop and mobile

## 🛠️ Local Development

### Prerequisites
- Java 17+
- Node.js 18+
- MySQL 8.0+
- Maven 3.9+

### Backend Setup
```bash
cd Backend/Hospital-Management-System
mvn clean install
mvn spring-boot:run
```

### Frontend Setup
```bash
cd Frontend/Hospital_UI
npm install
ng serve
```

Visit `http://localhost:4200` in your browser.

## 📁 Project Structure
```
Hospital-Management-System/
├── Backend/
│   └── Hospital-Management-System/
│       ├── src/
│       ├── pom.xml
│       ├── Procfile
│       └── system.properties
├── Frontend/
│   └── Hospital_UI/
│       ├── src/
│       ├── package.json
│       └── vercel.json
└── README.md
```

## 🔗 API Endpoints

All endpoints are prefixed with `/api/v1`

- **Patients**: `/patients` (GET, POST, PUT, DELETE)
- **Appointments**: `/api/v2/appointments` (GET, POST, DELETE)
- **Medicines**: `/api/v3/medicines` (GET, POST, PUT, DELETE)
- **AI Chat**: `/api/ai/chat` (POST)
- **Login**: `/api/login` (POST)

## 🔐 Security

- Spring Security with custom authentication
- CORS enabled for frontend
- Password encryption with BCrypt
- Role-based access control

## 📝 License

This project is open source and available under the MIT License.
