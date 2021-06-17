helpers do
  def current_user
    User.find_by(id: session[:user_id])
  end
end 

# When a browser requests the root of the application
get '/' do
        @finstagram_posts = FinstagramPost.order(created_at: :desc)
        erb(:index) #this is calling the erb method, predefined
end

get '/signup' do # if a user navigates to the path "/signup"
        email      = params[:email]
        avatar_url = params[:avatar_url]
        username   = params[:username]
        password   = params[:password]

        @user= User.new({ email: email, avatar_url: avatar_url, username: username, password: password }) # setup @user object

        if @user.save
                redirect to('/login') 
        else
                erb(:signup)
        end
        erb(:signup)   # render "app/views/signup.erb"
end

post '/signup' do
        
        # grab user input values from params
        email = params[:email]
        avatar_url= params[:avatar_url]
        username= params[:username]
        password= params[:password]

        # instantiate and save a User
        @user= User.new({email:email, avatar_url: avatar_url, username:username, password: password})

        if @user.save
                "User #{username} saved!"
        else
                # display error messages
                erb(:signup)
        end

end

get '/login' do
        username = params[:username]
        password = params[:password]

        user = User.find_by(username: username)  

        if user && user.password == password
                session[:user_id] = user.id
                redirect to('/')
        else
                @error_message = "Login failed."
                erb(:login)
        end
end

post '/login' do
        username= params[:username]
        password= params[:password]

        @user= User.find_by(username: username)

        if @user && @user.password==password
                session[:user_id]= @user.id
                "Success! User with id #{session[:user_id]} is logged in"
        else
                @error_message="Login Failed"
                erb(:login)
        end
end

get '/logout' do
        session[:user_id] = nil
        redirect to('/')
end

get '/finstagram_posts/new' do
  @finstagram_post = FinstagramPost.new
  erb(:"finstagram_posts/new")
end

post '/finstagram_posts' do
  photo_url = params[:photo_url]

  @finstagram_post = FinstagramPost.new({ photo_url: photo_url, user_id: current_user.id })

  if @finstagram_post.save
    redirect(to('/'))
  else
    erb(:"finstagram_posts/new")
  end
end

get '/finstagram_posts/:id' do
  @finstagram_post = FinstagramPost.find(params[:id])   # find the finstagram post with the ID from the URL
  erb(:"finstagram_posts/show")               # render app/views/finstagram_posts/show.erb
end
# This code tells apps  to simply display the file 
# called index.html from the directory app/views when the app is opened.