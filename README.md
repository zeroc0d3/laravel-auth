## Laravel-Auth (with Capistrano Deployment)

Zero downtime deployment Laravel Auth with Capistrano Deployment

### How to use docker container
* Clone this repo
  ```
  git clone git@github.com:zeroc0d3/laravel-auth.git
  ```
* Change environment docker
  ```
  cd laravel-auth
  cp docker/.env.example docker/.env
  ```
* Running docker-container
  ```
  make run-docker
  ```

### How to use laravel-auth
* Clone this repo
  ```
  git clone git@github.com:zeroc0d3/laravel-auth.git
  ```
* Change environment laravel
  ```
  cd laravel-auth
  cp src/.env.example src/.env
  ```
* Define database connection (`src/.env`)
  ```
  ### MySQL ###
  DB_CONNECTION=mysql
  DB_HOST=172.119.119.4
  DB_PORT=3306
  DB_DATABASE=zeroc0d3lab_auth
  DB_USERNAME=admin
  DB_PASSWORD=password

  ### PostgreSQL ###
  DB_CONNECTION=mysql
  DB_HOST=172.119.119.6
  DB_PORT=3306
  DB_DATABASE=zeroc0d3lab_auth
  DB_USERNAME=admin
  DB_PASSWORD=password
  ```
* Running composer
  ```
  make composer-install
  --- or ---
  cd src
  composer install
  ```
* Running key generate
  ```
  make key-generate
  --- or ---
  cd src
  php artisan key:generate
  ```
* Running npm
  ```
  make npm-install
  make run-mix-dev
  --- or ---
  cd src
  npm install
  npm run dev
  ```
* Running migration database
  ```
  make run-migrate-all
  --- or ---
  cd src
  php artisan migrate:install
  php artisan migrate --seed
  ```
* Running laravel-auth project
  ```
  make run-project
  --- or ---
  cd src
  php artisan serve --port=8080
  ```
* Open Browser (chrome / firefox)
  ```
  http://localhost:8080
  ```
* Default Access
  ```
  username: admin@zeroc0d3lab.dev / user@zeroc0d3lab.dev
  password: password
  ```

### Capistrano Requirements
* Ruby Environment (RBENV) or Ruby Version Manager (RVM)

* Running bundle
  ```
  bundle install
  ```
* Edit Laravel source target in `config/deploy.rb`
  ```
  set :repo_url, "[YOUR_LARAVEL_REPO]"
  ```
* Edit target server environment in `config/deploy/[environment].rb`
  ```
  server '[YOUR_TARGET_SERVER]'
  ```
* Upload your shared files & folders in your server / VPS
  ```
  /var/www/[laravel-auth]/[environment]/shared/src
  ---
  .env
  composer.json
  composer.lock
  node_modules
  package.json
  storage/debugbar
  storage/framework
  storage/logs
  vendor
  yarn.lock
  ```

* Setup number of release folder in `config/deploy.rb`
  ```
  set :keep_releases, 5    ## keep 5 release folder
  ```

### Symlink Files (Default)
```
append :linked_files, "#{fetch(:source)}/.env", "#{fetch(:source)}/composer.json", "#{fetch(:source)}/composer.lock", "#{fetch(:source)}/package.json", "#{fetch(:source)}/yarn.lock",
---
.env
composer.json
composer.lock
package.json
yarn.lock
```

### Symlink Folders (Default)
```
append :linked_dirs, "#{fetch(:source)}/vendor", "#{fetch(:source)}/node_modules", "#{fetch(:source)}/storage"
---
vendor
node_modules
storage
```

### Folder Structure
```
[laravel-project]
├── staging
│   ├── current -> /var/www/[laravel-project]/staging/releases/20191123134641/
│   ├── releases
│   │   ├── 20191123081119
│   │   └── 20191123134641   ### the latest symlink
│   │       ├── .env -> /var/www/[laravel-project]/staging/shared/src/.env
│   │       ├── composer.json -> /var/www/[laravel-project]/staging/shared/src/composer.json
│   │       ├── composer.lock -> /var/www/[laravel-project]/staging/shared/src/composer.lock
│   │       ├── vendor -> /var/www/[laravel-project]/staging/shared/src/vendor/
│   │       ├── node_modules -> /var/www/[laravel-project]/staging/shared/src/node_modules/
│   │       ├── storage -> /var/www/[laravel-project]/staging/shared/src/storage/
│   │       └── yarn.lock -> /var/www/[laravel-project]/staging/shared/src/yarn.lock
│   ├── shared
│   │   ├── log
│   │   └── src
│   │       ├── .env
│   │       ├── composer.json
│   │       ├── vendor
│   │       ├── node_modules
│   │       └── storage
│   │           ├── debugbar
│   │           ├── framework
│   │           │   ├── cache
│   │           │   ├── sessions
│   │           │   └── views
│   │           ├── logs
│   │           └── users
│   └── tmp
└── [environments]
```

### Deployment
* Staging
  ```
  cap staging deploy
  ```

* Preproduction
  ```
  cap preprod deploy
  ```

* Production
  ```
  cap production deploy
  ```

### Manual Trigger
* Reload / Restart NGINX
  ```
  cap [environment] nginx:[manual_reload|manual_restart]
  ---
  cap staging nginx:manual_reload
  cap staging nginx:manual_restart
  ```

* Reload / Restart PHP-FPM (php7.4-fpm)
  ```
  cap [environment] phpfpm:[manual_reload|manual_restart]
  ---
  cap staging phpfpm:manual_reload
  cap staging phpfpm:manual_restart
  ```

* Install / Dump Autoload Composer
  ```
  cap [environment] composer:[install|dumpautoload|initialize]
  ---
  cap staging composer:install
  cap staging composer:dumpautoload
  cap staging composer:initialize   ## (will run install & dumpautoload)
  ```

* Clear View / Clear Cache Framework
  ```
  cap [environment] artisan:[clear_view|clear_cache|clear_all]
  ---
  cap staging artisan:clear_view
  cap staging artisan:clear_cache
  cap staging artisan:clear_all   ## (will run clear_view & clear_cache)
  ```

* NPM Package Dependencies
  ```
  cap [environment] npm:[install|update|cleanup|reinstall]
  ---
  cap staging npm:install
  cap staging npm:update
  cap staging npm:cleanup
  cap staging npm:reinstall ## (will run cleanup & install)
  ```

* Yarn Package Dependencies
  ```
  cap [environment] yarn:[install|update|cleanup|reinstall]
  ---
  cap staging yarn:install
  cap staging yarn:update
  cap staging yarn:cleanup
  cap staging yarn:reinstall ## (will run cleanup & install)
  ```

### Properties
* Author  : **@zeroc0d3 (ZeroC0D3Lab)**
* License : **Apache ver-2**