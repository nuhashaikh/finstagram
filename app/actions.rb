
# When a browser requests the root of the application
get '/' do

        @finstagram_posts = FinstagramPost.order(created_at: :desc)
        erb(:index) #this is calling the erb method, predefined

end
# This code tells apps  to simply display the file 
# called index.html from the directory app/views when the app is opened.