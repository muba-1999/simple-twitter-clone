class TweetClonesController < ApplicationController
  before_action :set_tweet_clone, only: %i[ show edit update destroy ]

  # GET /tweet_clones or /tweet_clones.json
  def index
    @tweet_clones = TweetClone.all.order('created_at DESC')
    @tweet_clone = TweetClone.new
  end

  # GET /tweet_clones/1 or /tweet_clones/1.json
  def show
  end

  # GET /tweet_clones/new
  def new
    @tweet_clone = TweetClone.new
  end

  # GET /tweet_clones/1/edit
  def edit
  end

  # POST /tweet_clones or /tweet_clones.json
  def create
    @tweet_clone = TweetClone.new(tweet_clone_params)

    respond_to do |format|
      if @tweet_clone.save
        format.html { redirect_to root_path, notice: "Tweet clone was successfully created." }
        format.json { render :show, status: :created, location: @tweet_clone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tweet_clone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweet_clones/1 or /tweet_clones/1.json
  def update
    respond_to do |format|
      if @tweet_clone.update(tweet_clone_params)
        format.html { redirect_to tweet_clone_url(@tweet_clone), notice: "Tweet clone was successfully updated." }
        format.json { render :show, status: :ok, location: @tweet_clone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tweet_clone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweet_clones/1 or /tweet_clones/1.json
  def destroy
    @tweet_clone.destroy

    respond_to do |format|
      format.html { redirect_to tweet_clones_url, notice: "Tweet clone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet_clone
      @tweet_clone = TweetClone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweet_clone_params
      params.require(:tweet_clone).permit(:tweet_clone)
    end
end
