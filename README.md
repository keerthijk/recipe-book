# Recipe Book

This application list Marley Spoon recipes.


* Ruby version: `ruby '2.6.6'`

# Local setup
* Clone the respository - `git clone https://github.com/keerthijk/recipe-book.git`
* Go to the project folder - `cd recipe_book`
* Run bundle - `bundle`
* Please create a master.key file inside the config folder
  * Save the contentful crendentials inside the file:
  ```
     contentful:
        space_id: 'kk2bw5ojx476'
        access_token: '7ac531648a1b5e1dab6c18b0979f822a5aad0fe5f1109829b8a197eb2be4b84c'
        environment_id: 'master'
  ```
* Run local server: `rails s`
* Visit `http://localhost:3000/` - It should show the list of recipes
* Click on each recipe - It should show detailed view of each recipe


* To run the test: `rspec`

* To run rubocop(Ruby static code analyzer and code styler): `rubocop`


