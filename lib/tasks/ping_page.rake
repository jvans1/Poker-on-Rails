desc "This task is called by the Heroku cron add-on"
task :ping_page => :environment do
   uri = URI.parse('http://desolate-woodland-8472.herokuapp.com/')
   Net::HTTP.get(uri)
 end