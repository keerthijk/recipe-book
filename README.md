# Recipe Book

This application is to list recipes.


* Ruby version: `ruby '2.6.6'`

* Please create a master.key file inside the config folder
  * Save the contentful crendentials inside the file:
  ```
     contentful:
        space_id: 'kk2bw5ojx476'
        access_token: '7ac531648a1b5e1dab6c18b0979f822a5aad0fe5f1109829b8a197eb2be4b84c'
        environment_id: 'master'
  ```

* Run the spec: `rspec`

* Run rubocop: `rubocop`

* Run local server: `rails s`

* Visit `http://localhost:3000/` - It should show the list of recipes
* Click on each recipe - It should show detailed view of each recipe
