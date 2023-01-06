class HomeController < ApplicationController
   protect_from_forgery with: :null_session
  def index
   flash[:notice]=false
  end

  def comp
     flash[:eb]="dsfsdfsdfdsfdsfdsfdsfdsf"
     flash[:notice]="This is dynamic alert"
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
  end
end
