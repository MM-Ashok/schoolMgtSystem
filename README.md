# 📋 System Requirements

### ✅ PHP
- **Required Version:** PHP 8.1 or higher  
- *(Minimum supported: PHP 8.1.x)*

### ✅ Framework
- **Laravel Version:** Laravel 7.x

---

# 📦 Module Dependencies

The following Node.js modules are required for the project to function correctly:

| Package                | Version    |
|------------------------|------------|
| cross-env              | ^5.1       |
| jquery                 | ^3.2       |
| jquery-ui              | ^1.12.1    |
| laravel-mix            | ^4.0.7     |
| lodash                 | ^4.17.5    |
| popper.js              | ^1.12      |
| resolve-url-loader     | ^2.3.1     |
| sass                   | ^1.15.2    |
| sass-loader            | ^7.1.0     |
| tailwindcss            | ^1.0.1     |
| vue-template-compiler  | ^2.6.10    |

---

# ⚙️ Installation Instructions

Follow the steps below to install and set up the project locally:

```bash
git clone <repository-url>
cd <project-folder>
composer install
npm install
cp .env.example .env
php artisan key:generate
````
🧪 Running the App Locally<br>
````bash
php artisan serve
npm run dev
````
🚀 Build Commands
Use the following npm scripts to build assets:
````bash
npm run dev     # For development
npm run prod    # For production
````
🌍 Environment Configuration<br>
Explain the important .env variables to configure.<br>

````bash
APP_NAME=MyProject
APP_ENV=local
APP_URL=http://localhost

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_db
DB_USERNAME=your_user
DB_PASSWORD=your_password
````
