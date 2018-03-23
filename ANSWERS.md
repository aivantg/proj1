# Q0: Why is this error being thrown?

There is no Pokemon class yet so the constant "Pokemon" resolves to nothing.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

They are appearing through the index action in the home controller. it sets the @pokemon variable to a random sample from all wild pokemon.

Common Factors: They all are in the database, put there by the seed file, and they all are wild, or have no trainer.  

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It creates a form creating a button that links to the path defined in Routes.rb by the name "capture". It is styled using the class name "button medium" and it sends a PATCH request to that route with the parameter id:@pokemon, passing in the Pokemon you want to update. You don't have to send information about the trainer as you can use devise to see who's currently logged in

# Question 3: What would you name your own Pokemon?

Kenasaurus Rex or Jaijeet

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I redirected to trainers/current_trainer.id

It was a get request and I had to pass in the parameter of the trainer id that I wanted. But in hindsight you could probably redirect to the function within the TrainersController........I'm gonna try that

update! You can also specify an action and parameters using "action: "show" id: "id" "

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

by adding something to "flash" it gives a hash available use to the next action and by setting it to the error message, the next time an action is done, It gets displayed by application.html.erb when it renders messages

# Give us feedback on the project and decal below!



# Extra credit: Link your Heroku deployed app
