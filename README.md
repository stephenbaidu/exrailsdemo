git clone git@github.com:stephenbaidu/exrails.git demo
cd demo
Re-init git and commit
Crucial: Change `secret_key_base` in config/secrets.yml. Use `rake secret` to generate one.
cd angular && sudo npm install && bower install
Update database.yml
Generate models
Run migration `rake db:create db:migrate`
Update lookups tasks with lookup table and values
Run `rake app:setup` to populate permissions and create default user
Update models with necessary validations
Add controllers and routes
Generate components with `exrails:ng` rake task
Add generated config scripts to index.html
Update app.js modules with links
Enjoy

Roadmap
 - Convert to typescript & webpack
 - Enhance report with iframe support
 - 
