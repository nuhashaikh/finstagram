
# When a browser requests the root of the application
get '/' do

        @finstagram_posts = FinstagramPost.order(created_at: :desc)
        erb(:index) #this is calling the erb method, predefined

end

get '/signup' do # if a user navigates to the path "/signup"
        @user= User.new # setup empty @user object
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
# This code tells apps  to simply display the file 
# called index.html from the directory app/views when the app is opened.