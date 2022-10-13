require 'sinatra'
require './day'

# Returns the day of the week for the given Time object.
def day_of_the_week_2(time)
  Date::DAYNAMES[time.wday]
end

get '/hello-day1' do
  DAYNAMES = ["Sunday", "Monday", "Tuesday", "Wednesday",
              "Thursday", "Friday", "Saturday"]
  dayname = DAYNAMES[Time.now.wday]
  "Hello, world! Happy #{dayname}."
end

get '/hello-day2' do
  dayname = Date::DAYNAMES[Time.now.wday]
  "Hello, world! Happy #{dayname}."
end

get '/hello-day3' do
  "Hello, world! Happy #{day_of_the_week_2(Time.now)}."
end

get '/hello-day4' do
  "Hello, world! Happy #{day_of_the_week(Time.now)}—now from a file!"
end

get '/' do
  greeting(Time.now)
end
