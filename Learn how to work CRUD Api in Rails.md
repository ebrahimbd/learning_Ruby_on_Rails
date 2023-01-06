# Sart to learn ruby
[https://guides.rubyonrails.org/active_record_querying.html](https://guides.rubyonrails.org/active_record_querying.html)
 
[learn https://www.tutorialspoint.com/ruby/ruby_loops.htm](learn https://www.tutorialspoint.com/ruby/ruby_loops.htm)
 
##  Api intrigation in ruby rails   

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install foobar.

```bash
rails g controller api/v1/articles index show create update destroy
rails g model article title:string body:string author:string

```

## Usage

``` c
// routes 
namespace :api do
    namespace :v1 do
      resources :articles, only: [:create, :index,:show, :update, :destroy]
    end
  end


//Rails: Can't verify CSRF token authenticity when making a POST request
class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
end


// render only json
  def index
     article=Article.all()
     render json:article, status:200
  end



//for create 
 def create
    article=Article.new(
      title:params[:title],
      body:params[:body],
      author:params[:author],
    )
    if article.save
      render json:article, status:200
    else
      render json:{
        error:"Error createing............"
      }
  end



// for get specific id
  def show
     article=Article.find_by(id: params[:id])
     if article
      render json:article, status:200
     else
      render json:{
        error:"not found............"
      }
    end
  end

```
#### hide and show or templating  html by
``` c
// go to each controler and each name page assogn
def ebrahim
flash[:eb]="Ebrahim"
end

// go to its ebrahim.html.erb file and assign it
<%  if flash[:eb]%>
<%= flash[:eb] %>
<% end %>


``` 


## when change Gemfile need to run 
``` c
bundle
``` 
# ======= Necessary knowledge  =========

## Itration onject

``` c
     @student=Student.all()
      @arr=[]
     @student.each do |e|
      @arr.push({
         "name" =>e.first_name,
         "last_naem" =>e.last_name,
         "email"=>e.email,
      })
     end
     puts  @arr[0]["name"]
``` 
## get in html.erb file 
``` c
  <%= @arr[0]["email"]%> 
// or loop through only quary object and show it value
<% @student.each do |e| %>
 <%= e.first_name%> 
<% end %>    
``` 

## Contributing 


### To rollback the last migration you can do:
``` c
rails db:rollback
``` 
If you want to rollback a specific migration with a version you should do:
``` c
rails db:migrate:down VERSION=YOUR_MIGRATION_VERSION
# eg rake db:migrate:down VERSION=20141201122027
``` 

[https://salehcv.web.app/](https://salehcv.web.app/)