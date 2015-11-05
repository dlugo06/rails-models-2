class HomeController < ApplicationController

  # layout "simple" #this will overwrite all layouts
  layout :random_layout, only: :index #only for this action
  # layout :random_layout, except: :index #all but this action/action list


  def index
    # head 400
    head :no_content
    # redirect_to "/users" #works but is bad form to hard code the url
    # redirect_to users_path #this is a refactoring of the code above. Much better because we a "named route" Check the routes to see what's up.
    # redirect_to users_url #same as above
    # redirect_to :back #this will take you whence you came
    # @users = User.all
    # render :index #This will happen by default.
    # render action: :list #equivalent to the above render
    # render "list" #equivalent to the above render
    # render "users/index" #When you give render a path, you must use a string.
    # render nothing: true #This will render nothing, bro. (200 OK, empty body)
    # render file: "file/path/file.txt" #you can also render a file.
    # render plain: "ok" #render plain text or something more meaningful like params.inspect
    # render inline: "<%= Time.now %>" #you can render erb directly.
    # render json: @users.first
    # render :index, layout: false #this will display only the what is in the view file
    # render :index, layout: "simple" #this allows us to specify which layout we want the index view to look like.
    # render plain: "You did something dumb", status: 400
    # render plain: "You did something dumb", status: :bad_request
    # Do not render 2 things, bro.
  end

  private

  def random_layout #this can be used for AB testing via layouts.
    rand() > 0.5 ? "simple": false
  end
end
