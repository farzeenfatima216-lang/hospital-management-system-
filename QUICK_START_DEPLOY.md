# 🚀 QUICK START - Deploy in 30 Minutes!

## What You Need
1. **GitHub Account** (free)
2. **Render.com Account** (free)
3. **Vercel Account** (free)
4. **Railway.app Account** (free, includes $5 credits)

## Step 1: GitHub (2 minutes)
```bash
cd c:\Users\pc\Desktop\Hospital-Management-System-with-AI-Assistant-using-Springboot-main
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/YOUR_USERNAME/Hospital-Management-System.git
git branch -M main
git push -u origin main
```

## Step 2: Database (5 minutes)
1. Go to https://railway.app
2. Create new project → Provision MySQL
3. Copy MySQL connection string
4. **Save it!**

## Step 3: Deploy Backend (10 minutes)
1. Go to https://render.com
2. New Web Service → Connect GitHub repository
3. Select: `Hospital-Management-System`
4. **Root Directory**: `Backend/Hospital-Management-System`
5. **Build Command**: `mvn clean package -DskipTests`
6. **Start Command**: `java -Dserver.port=$PORT -jar target/Hospital-Management-System-0.0.1-SNAPSHOT.jar`
7. **Add Environment Variables**:
   - `DB_URL` = Your MySQL connection string from Railway
   - `DB_USERNAME` = (from Railway)
   - `DB_PASSWORD` = (from Railway)
8. Click "Create Web Service"
9. **Wait for deployment** → **Copy the URL** (example: `https://hospital-management-api.onrender.com`)

## Step 4: Update Frontend URL (2 minutes)
1. Open: `Frontend/Hospital_UI/src/environments/environment.prod.ts`
2. Replace `YOUR_BACKEND_URL` with your Render URL:
   ```typescript
   apiUrl: 'https://hospital-management-api.onrender.com/api/v1'
   ```
3. Save and commit:
   ```bash
   git add .
   git commit -m "Add backend URL"
   git push
   ```

## Step 5: Deploy Frontend (5 minutes)
1. Go to https://vercel.com
2. New Project → Import Git Repository
3. Select: `Hospital-Management-System`
4. **Framework**: Angular
5. **Root Directory**: `Frontend/Hospital_UI`
6. Click "Deploy"
7. **Wait for deployment** → **Get your frontend URL** (example: `https://hospital-management-system.vercel.app`)

## 🎉 Done!
Your app is live at:
```
https://hospital-management-system.vercel.app
```

## 🧪 Quick Test
1. Visit: https://hospital-management-system.vercel.app
2. Try to view/create patients
3. Check browser console for errors

---

## 📞 Need Help?
- See `STEP_BY_STEP_DEPLOYMENT.md` for detailed instructions
- See `DEPLOYMENT_CHECKLIST.md` to verify everything
- See common errors in the full guide

---

**Congratulations! Your Hospital Management System is now live!** 🚀
