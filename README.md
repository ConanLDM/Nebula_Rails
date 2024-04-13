# README

# Experimental Rails 7 app with Tailwind CSS for now...

Tailwind inserted during the Rails new command, there is opportunity for incorporating Bootstrap also if Tailwind does not provide everything I am looking to use for the application, however no concrete plan either way at this stage.

Contains a location section of the application, geocoding oriented, looking to incorporate several geocoding and location related gems for this purpose. 

Contains Solid Queue for jobs, likely email related and nothing too complex for background jobs for now.

Intending on using Hotwire with Stimulus and Turbo featuring in the application.

Will be utilising commonly used gems such as Devise and Simple Form, along with gems for charts and other functionalities, such as RSpec for testing.

Recent changes: 

Incorporated Devise into the project for user authentication. 

Login screens along with Devise related notices and flashes added to the application.

Introduced Cloudinary for handling external media importing to the application (keeping the application size from expanding rapidly due to large media files).