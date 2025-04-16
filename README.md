📋 System Requirements
✅ PHP
    Required Version: PHP 8.1 or higher
    (Minimum supported: PHP 8.1.x)

✅ Framework
    Laravel Version: Laravel 7.x

📦 Module Dependencies<br>
The following Node.js modules are required for the project to function correctly:
Package	Version
cross-env	^5.1
jquery	^3.2
jquery-ui	^1.12.1
laravel-mix	^4.0.7
lodash	^4.17.5
popper.js	^1.12
resolve-url-loader	^2.3.1
sass	^1.15.2
sass-loader	^7.1.0
tailwindcss	^1.0.1
vue-template-compiler	^2.6.10

⚙️ Installation Instructions
Step-by-step guide to getting the project up and running.
git clone <repository-url>
cd <project-folder>
composer install
npm install
cp .env.example .env
php artisan key:generate

🧪 Running the App Locally
Instructions to run the application.
php artisan serve
npm run dev

🚀 Build Commands
For compiling assets:
npm run dev     # Development build
npm run prod    # Production build


📁 Project Structure
├── app/
├── config/
├── database/
├── public/
├── resources/
├── routes/
├── storage/
└── ...
