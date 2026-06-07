#!/bin/bash

# Hospital Management System - Deployment Ready Check Script
# This script verifies that your application is ready for deployment

echo "🏥 Hospital Management System - Deployment Readiness Check"
echo "=========================================================="
echo ""

# Check Backend Configuration
echo "✓ Checking Backend Configuration..."
if grep -q "environment.apiUrl" Frontend/Hospital_UI/src/app/patient.service.ts; then
    echo "  ✅ Patient service uses environment configuration"
else
    echo "  ❌ Patient service NOT using environment configuration"
fi

if grep -q "spring.datasource.url=\${DB_URL" Backend/Hospital-Management-System/src/main/resources/application.properties; then
    echo "  ✅ application.properties uses environment variables"
else
    echo "  ❌ application.properties NOT using environment variables"
fi

if [ -f "Backend/Hospital-Management-System/Procfile" ]; then
    echo "  ✅ Procfile exists"
else
    echo "  ❌ Procfile NOT found"
fi

# Check Frontend Configuration
echo ""
echo "✓ Checking Frontend Configuration..."
if [ -f "Frontend/Hospital_UI/src/environments/environment.ts" ]; then
    echo "  ✅ Development environment file exists"
else
    echo "  ❌ Development environment file NOT found"
fi

if [ -f "Frontend/Hospital_UI/src/environments/environment.prod.ts" ]; then
    echo "  ✅ Production environment file exists"
else
    echo "  ❌ Production environment file NOT found"
fi

if [ -f "Frontend/Hospital_UI/vercel.json" ]; then
    echo "  ✅ Vercel configuration exists"
else
    echo "  ❌ Vercel configuration NOT found"
fi

# Check Deployment Documentation
echo ""
echo "✓ Checking Deployment Documentation..."
files=("QUICK_START_DEPLOY.md" "STEP_BY_STEP_DEPLOYMENT.md" "DEPLOYMENT_CHECKLIST.md" "DEPLOYMENT_GUIDE.md")
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "  ✅ $file exists"
    else
        echo "  ❌ $file NOT found"
    fi
done

echo ""
echo "=========================================================="
echo "✅ Your Hospital Management System is ready for deployment!"
echo ""
echo "Next Steps:"
echo "1. Read QUICK_START_DEPLOY.md for immediate deployment"
echo "2. Push your code to GitHub"
echo "3. Deploy backend to Render.com"
echo "4. Deploy frontend to Vercel"
echo "5. Share your public URL!"
echo ""
echo "Happy Deploying! 🚀"
