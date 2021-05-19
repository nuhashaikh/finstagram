get '/' do
        File.read(File.join('app/views', 'index.html'))
end
# This code tells apps  to simply display the file 
# called index.html from the directory app/views when the app is opened.