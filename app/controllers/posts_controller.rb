class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :relogin, only: %i[new create update edit destroy]
  before_action :authorize_modification, only: %i[edit update destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  def relogin
    return if user_signed_in?

    flash[:alert] = 'Please login first'
    redirect_to posts_path
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @comment = Comment.new
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit; end

  # POST /posts
  # POST /posts.json
  def create
    @post = current_user.posts.create(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  def authorize_modification
    return if current_user.id == @post.user_id

    flash[:notice] = "You're not allowed to modify this post"
    redirect_to posts_path
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
