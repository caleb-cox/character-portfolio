1. Download bootstrap
  - http://getbootstrap.com/getting-started/#download

2. Move bootstrap/css/bootstrap.css to app/assests/stylesheets

3. Move bootstrap/js/bootstrap.css to app/assets/javascripts

4. add stylesheet tag to your application layout in views
  - <%= stylesheet_link_tag    'bootstrap', media: 'all', 'data-turbolinks-track': 'reload' %>
  - <%= javascript_include_tag 'bootstrap', 'data-turbolinks-track': 'reload' %>

5. have rails initialize with the asset by going to config/intializers/assets.rb. Add below text to file.
  - Rails.application.config.assets.precompile += %w( bootstrap.css )
  - Rails.application.config.assets.precompile += %w( bootstrap.js )

6. Run your rails server and look at your beautiful website

*****
Other notes
- under your stylesheets, anything changed in your application.css file will result in site-wide changes to styling
*****

General setup & use

<div class="container-fluid">
  <div class = "row">
    <div class = 'col-lg-6'>
      <p>Half the page</p>
    </div>

    <div class = 'col-lg-6'>
      <p>Other Half the page</p>
    </div>
  </div> <!-- end .row -->

  <div class = "row">
    <div class = 'col-lg-12'>
      <p>The entire page</p>
    </div>
  </div> <!-- end .row -->
  
</div> <!--end .container-fluid-->
