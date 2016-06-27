# Phase by Phase Buildup
0. [x] I see a map (basic server with basic google maps)
1. [x] I see a map of hard coded drivers clientside (using google maps nontrivially)
2. [x] I see a map of hard coded drivers from server (organizing js and using an internal "api")
3. [x] I see a map of database backed drivers from server
4. [ ] I create an account and see a map of drivers nearby (account management)
5. [ ] I use my account to request a ride from a random driver (minimalist matchmaking)
6. [ ] I use my account to request a ride from an "optimal" driver (actual matchmaking class)

# Full MVP User Story flow
* I land on the site and login
* I see where I am on a map
* I see the closest available drivers
* I request a ride and it matches me with a driver

# Nice touches
* get a favicon setup
* setup dns
* travis free tier setup for tests
* code climate
* angular
* db constraints and indexes
* driver lat lng not null
* driver available default false

# Not so minimal
* tracking position of arriving driver and seeing them arrive
* estimated arrival time
* ability to rate drivers, riders
* tracking position of driver during trip
* mobile app wrappers
* fare calculation based on time + distance
* built in payment service
* bower to install js libraries
* chef scripts to spin up an ec2 instance
* postgis
* extract drivers data to be point in time for driver, and get latest point in time data point
* make availability based on lack of "current trip" record (trip with no end time marked)

# Local Dev Environment
* jshint/etc. for vim

# Basic Data Structures To Consider
passengers
name:string
email:string
phone_number:string

drivers
name:string
email:string
phone_number:string

rides
start_location:string
start_at:datetime
end_location:string
end_at:datetime
driver_id:integer
passenger_id:integer
