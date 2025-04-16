# 📋 System Requirements

### ✅ PHP
- **Required Version:** PHP 7.4 or higher  
- *(Minimum supported: PHP 7.4.x)*

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
📘 Project Overview<br>
This project is built using the PHP Laravel framework and features a robust admin panel for managing dynamic website content. Below are the core features implemented in the system:
````bash
    🔐 User Authentication
        Login and logout functionality is available for Super Admin, Teachers, and Students.
    🧑‍🏫 Multi-Role Access Control
        Different roles are defined for Admin, Teachers, and Students, each with their own privileges.
    🛠️ Admin Dashboard
        A full-featured admin section that allows management of dynamic page content and user roles.
    🌐 Dynamic Page Content
        Content for various pages like Home, About Us, FAQ, and Teachers can be managed directly from the admin panel.
````
📄 Public Pages<br>
Includes standard public-facing pages such as:
````bash
    Home
    About Us
    FAQ
````
👩‍🏫 Teachers Directory<br>
A dedicated Teachers page displays teacher profiles along with:
````bash
    Profile image
    Facebook, Twitter, and Instagram links
    Skillset and Ratings
````
