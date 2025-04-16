<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Project Documentation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
        }
        h2 {
            margin-top: 2rem;
        }
        ul {
            list-style-type: disc;
            margin-left: 1.5rem;
        }
        pre {
            background-color: #f4f4f4;
            padding: 1rem;
            border-radius: 5px;
            overflow-x: auto;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 1rem;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 0.5rem;
            text-align: left;
        }
    </style>
</head>
<body>

    <h2>📋 System Requirements</h2>
    <ul>
        <li><strong>PHP:</strong> Version 8.1 or higher (Minimum supported: PHP 8.1.x)</li>
        <li><strong>Framework:</strong> Laravel 7.x</li>
    </ul>

    <h2>📦 Module Dependencies</h2>
    <p>The following Node.js modules are required for the project to function correctly:</p>
    <table>
        <thead>
            <tr>
                <th>Package</th>
                <th>Version</th>
            </tr>
        </thead>
        <tbody>
            <tr><td>cross-env</td><td>^5.1</td></tr>
            <tr><td>jquery</td><td>^3.2</td></tr>
            <tr><td>jquery-ui</td><td>^1.12.1</td></tr>
            <tr><td>laravel-mix</td><td>^4.0.7</td></tr>
            <tr><td>lodash</td><td>^4.17.5</td></tr>
            <tr><td>popper.js</td><td>^1.12</td></tr>
            <tr><td>resolve-url-loader</td><td>^2.3.1</td></tr>
            <tr><td>sass</td><td>^1.15.2</td></tr>
            <tr><td>sass-loader</td><td>^7.1.0</td></tr>
            <tr><td>tailwindcss</td><td>^1.0.1</td></tr>
            <tr><td>vue-template-compiler</td><td>^2.6.10</td></tr>
        </tbody>
    </table>

    <h2>⚙️ Installation Instructions</h2>
    <pre><code>git clone &lt;repository-url&gt;
cd &lt;project-folder&gt;
composer install
npm install
cp .env.example .env
php artisan key:generate
</code></pre>

    <h2>🧪 Running the App Locally</h2>
    <pre><code>php artisan serve
npm run dev
</code></pre>

    <h2>🚀 Build Commands</h2>
    <pre><code>npm run dev     # Development build
npm run prod    # Production build
</code></pre>

    <h2>📁 Project Structure</h2>
    <pre><code>├── app/
├── config/
├── database/
├── public/
├── resources/
├── routes/
├── storage/
└── ...
</code></pre>

</body>
</html>
