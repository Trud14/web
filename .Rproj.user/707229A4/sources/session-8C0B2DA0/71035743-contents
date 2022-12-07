# This simple script will run a series of functions to update the website within this directory
# starting with libraries, stop the server, rebuild your site, and then serve it and check it. 
# To run them, simply uncomment the lines (if applic.) and hit 'run'. 

# Load Libraries
library(blogdown)

# stop the server in case running from a previous session.
stop_server()

# update site build
blogdown::build_site()

# serve site
blogdown::serve_site()

# preview the site
# just re-run the previous command -- R will spit errors at you but it works

# check site if needed -- before publishing
check_site()

# Runs checks on validity of YAML metadata in posts, good if you have weird errors.
blogdown::check_content()

# this will show the help files
# help(blogdown)
