class PostsController < ApplicationController
    http_basic_authenticate_with name: "admin", password: "123456", except: [:index, :show]

    def index
        # @posts  = Post.all
        @posts   = Post.all.page(params[:page]).per(4)
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        # render plain: params[:post].inspect
        @post = Post.new(post_params)

        if(@post.save)
            redirect_to @post
        else
            render 'new'
        end
        # flash[:success] = "Register success"
    end 

    def edit
        @post = Post.find(params[:id])        
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to posts_path
    end

    def update
        @post = Post.find(params[:id]) 
        
        if(@post.update(post_params))
            flash[:success] = "Register success"
            redirect_to @post
        else
            render 'edit'
        end
    end

    private def post_params
        params.require(:post).permit(:title, :body)
    end

end
