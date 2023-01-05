class Api::V1::ArticlesController < ApplicationController
   protect_from_forgery with: :null_session
  def index
     if params[:api]
      article=Article.order(created_at: :desc)
      render json:article, status:200
     end
  end

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

  def update
       article=Article.find_by(id: params[:id])
     if article
      article.update(     
       title:params[:title],
      body:params[:body],
      author:params[:author],)
      render json:article, status:200
     else
      render json:{
        error:"not found............"
      }
    end
  end

  def destroy
           article=Article.find_by(id: params[:id])
     if article
       article.destroy
      render json:{
        response:"Deleted sucessfully"
      }
     else
      render json:{
        error:"not found............"
      }
    end
  end

 
  end
end
