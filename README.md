Assignment

Simple version
● Fetch the genres from the API to be able to associate the genre ids with the genre names
● Fetch popular movies from the API
● Cache the movies into a database of your choice (Hive, sqflite,...)
● Implement pagination when fetching movies
● Use the api_key as the query parameter in each request in order to successfully authorise
the API requests
● When the user selects a movie, open the details page
● Try to make the UI look as close as possible to the provided Simple version section of the
Figma file

Advanced version
● Implement the navigation bar
● Add the favourite movies feature - NOTE: the user can toggle the movie as a favourite in the
Movie list, Favourites list and in the Movie details page
● Cache the favourite movies into a database of your choice (Hive, sqflite,...)
● Bearer token header authorization (see example in postman) - bonus points for creating a
custom auth interceptor in using the dio package
● Show notification when user is oine - NOTE: show cached movies but let the user know he is
offline
● Add some animation transition between overview and details page
