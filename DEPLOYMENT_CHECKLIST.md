# ✅ Hospital Management System - Deployment Checklist

## Pre-Deployment Checklist

### Backend Configuration
- [ ] **SecurityConfig.java**: CORS is enabled for Vercel/Netlify domains
- [ ] **application.properties**: Environment variables configured
  - [ ] `DB_URL`, `DB_USERNAME`, `DB_PASSWORD` use `${...}` syntax
  - [ ] `PORT` environment variable configured
- [ ] **pom.xml**: Spring Boot starter dependencies are correct
- [ ] **Procfile**: Created with correct Java command
- [ ] **system.properties**: Java version set to 17
- [ ] Backend compiles without errors: `mvn clean package`

### Frontend Configuration  
- [ ] **environment.ts**: Local development points to `http://localhost:8080/api/v1`
- [ ] **environment.prod.ts**: Production ready with placeholder for backend URL
- [ ] **All service files**: Using environment configuration
  - [ ] patient.service.ts
  - [ ] appointment.service.ts
  - [ ] medicine.service.ts
  - [ ] login.service.ts
  - [ ] ai-chat.service.ts
- [ ] **angular.json**: Build output directory correct
- [ ] **package.json**: Build scripts configured
- [ ] **vercel.json**: Framework set to angular
- [ ] Frontend builds without errors: `npm run build`

### GitHub Setup
- [ ] [ ] GitHub repository created
- [ ] Code pushed to GitHub
- [ ] Repository is PUBLIC

### Database Setup
- [ ] [ ] MySQL database created on Railway.app
- [ ] [ ] Connection string saved
- [ ] [ ] Database credentials saved

---

## Deployment Steps

### 1. Backend Deployment (Render.com)
- [ ] Create Render account
- [ ] Connect GitHub
- [ ] Create Web Service
- [ ] Set Root Directory: `Backend/Hospital-Management-System`
- [ ] Set Build Command: `mvn clean package -DskipTests`
- [ ] Set Start Command: `java -Dserver.port=$PORT -jar target/Hospital-Management-System-0.0.1-SNAPSHOT.jar`
- [ ] Add Environment Variables from Railway MySQL
- [ ] Deployment successful
- [ ] **Note Backend URL**: `https://hospital-management-api.onrender.com`

### 2. Update Frontend
- [ ] Update `environment.prod.ts` with backend URL
- [ ] Commit changes: `git add . && git commit -m "Update backend URL"`
- [ ] Push to GitHub: `git push`

### 3. Frontend Deployment (Vercel)
- [ ] Create Vercel account
- [ ] Import GitHub repository
- [ ] Set Root Directory: `Frontend/Hospital_UI`
- [ ] Deployment successful
- [ ] **Note Frontend URL**: `https://hospital-management-system.vercel.app`

---

## Post-Deployment Testing

### Functional Tests
- [ ] Frontend loads without errors
- [ ] Can view patient list
- [ ] Can create new patient
- [ ] Can view appointments
- [ ] Can create new appointment
- [ ] Can view medicines
- [ ] Can create new medicine
- [ ] AI Chat functionality works
- [ ] Login/Authentication works

### Performance Tests
- [ ] Frontend loads in < 5 seconds
- [ ] API responses are fast
- [ ] No console errors in browser
- [ ] Mobile responsive design works

### Security Tests
- [ ] HTTPS is enabled
- [ ] CORS working properly
- [ ] Database credentials not exposed
- [ ] No sensitive data in logs

---

## Common Deployment URLs

After successful deployment:

| Service | URL | Type |
|---------|-----|------|
| Frontend Web App | https://hospital-management-system.vercel.app | Public |
| Backend API | https://hospital-management-api.onrender.com | Public |
| API Docs | https://hospital-management-api.onrender.com/api/v1 | Public |

---

## Troubleshooting

### If Backend doesn't deploy:
1. [ ] Check Render build logs
2. [ ] Verify Maven builds locally: `mvn clean package`
3. [ ] Check environment variables are set correctly
4. [ ] Check database connection string

### If Frontend doesn't load:
1. [ ] Check Vercel build logs
2. [ ] Verify Angular builds locally: `npm run build`
3. [ ] Check environment.prod.ts has correct backend URL
4. [ ] Check browser console for errors

### If API calls fail:
1. [ ] Verify CORS is enabled in SecurityConfig.java
2. [ ] Check backend is running on Render
3. [ ] Verify environment.prod.ts has correct backend URL
4. [ ] Check network tab in browser DevTools

---

## 🎉 Congratulations!

Your Hospital Management System is now live and accessible to anyone with the URL!

Share the frontend URL with others:
```
https://hospital-management-system.vercel.app
```

---

## Next Steps (Optional)

- [ ] Add custom domain to Vercel
- [ ] Set up SSL certificate
- [ ] Add automated tests
- [ ] Set up CI/CD pipeline
- [ ] Monitor application performance
- [ ] Add analytics
- [ ] Set up backup strategy

---

**Need help?** Refer to `STEP_BY_STEP_DEPLOYMENT.md` for detailed instructions.
