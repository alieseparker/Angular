# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks
<<<<<<< HEAD

task default: 'test:run'

Rake::Task['test:run'].enhance ['test:features']

Rails::TestTask.new('test:features' => 'test:prepare') do |t|
  t.pattern = 'test/**/**/**_test.rb'
end
=======
>>>>>>> 3a3c33da21b8b6bf5c1df80eb4605b466cd00707
