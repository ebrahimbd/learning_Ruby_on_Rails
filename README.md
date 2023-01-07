# Sart to learn ruby
[https://guides.rubyonrails.org/active_record_querying.html](https://guides.rubyonrails.org/active_record_querying.html)
 
[learn https://www.tutorialspoint.com/ruby/ruby_loops.htm](https://www.tutorialspoint.com/ruby/ruby_loops.htm)
 
##  Api intrigation in ruby rails   
# install guide 

```
sudo apt update

sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev



curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash



echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc



echo 'eval "$(rbenv init -)"' >> ~/.bashrc


source ~/.bashrc


type rbenv


rbenv install -l

rbenv install 2.7.7

// must install global or gem might be error

rbenv global 2.7.7

ruby -v


echo "gem: --no-document" > ~/.gemrc


gem install bundler

gem install rails 

===================== Start a Project ============================
ruby -v
rails -v
gem install rails



//create new project 
rails new ebrahim

//starting server
rails -s


rails g controller home index

```
 

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
## Basic templating
``` c
// for image show
<%= image_tag 'tra.jpeg', class:""%>
// component render
 <%= render 'components/nav' %>
``` 

## some cli command
``` c
// showing all rails url 
rails routes

// go to the database concle
rails c
// if you want to create defult crud html from or page then 
rails g scaffold ebrahim name:string email:string
// then need to migrate
rails db:migrate
// create routing
rails g controller api/v1/ebrahim index show create update destroy
// crate database table or add any relaton  by reference
rails g model ebrahim name:string email:string 
// after create database then migrate the database
rails db:migrate
``` 
# ======= Necessary knowledge  =========
``` c
bundle
``` 
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

# Worke with virus-script 🤔
#### In rails 7 default javascript plug gem "importmap-rails". 
### Go to the config/importmap.rb add your cdn plug or any

``` c
pin "vue", to: "https://ga.jspm.io/npm:vue@3.2.26/dist/vue.esm-browser.js"
``` 

## Way 1 recomanded
### Go to the config/importmap.rb add 
``` c
pin "vue", to: "https://ga.jspm.io/npm:vue@3.2.45/dist/vue.esm-browser.js"
```
### Go to the  app/javascript/application.js
``` c
import "controllers"
```

### Create  app/javascript/controllers/component_controller/ebrahim_controller.js
``` c
import * as Vue from "vue";
const point = "#ebrahim";
const element = document.querySelector(point);
if (element !== null) {
  const app = Vue.createApp({
    data() {
      return {
        message: `<%= @arr[0]["email"]%>`,
        count: 1,
        show: false,
      };
    },
    methods: {
      eb() {
        this.count = this.count + 1;
        if (this.count > 5 && this.count < 13) {
          this.show = true;
        } else {
          this.show = false;
        }
      },
    },
  });
  const vm = app.mount(point);
}

```

## Way 2 
### Go to the views/home/ebrahim.tml.erb add 
``` c
<script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
<script></script>
 
  Vue.createApp({
    data() {
      return {
        message: `<%= @arr[0]["email"]%>`,
        count:1,
        show:false,
      }
    },
    methods:{
     eb(){
        this.count=this.count+1
        if(this.count>5 && this.count< 13 ){
            this.show=true
        }else{
              this.show=false
        }
     }
    }
  }).mount('#app')
</script>
``` 
## Database rollback 


### To rollback the last migration you can do:
``` c
rails db:rollback
``` 
If you want to rollback a specific migration with a version you should do:
``` c
rails db:migrate:down VERSION=YOUR_MIGRATION_VERSION
# eg rake db:migrate:down VERSION=20141201122027
``` 
## Learning resources
[https://web-crunch.com/posts/ruby-on-rails-api-vue-js](https://web-crunch.com/posts/ruby-on-rails-api-vue-js)

[https://www.engineyard.com/blog/rails-and-vue-js-part-1/](https://www.engineyard.com/blog/rails-and-vue-js-part-1/)

## Contributing 
[https://salehcv.web.app/](https://salehcv.web.app/)