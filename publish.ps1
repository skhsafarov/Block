git add *
git commit -m "saved main branch"
git push
move /bin/Release/net6.0/Block/.git/ /bin/Release/net6.0/
rm /bin/Release/net6.0/Block/*
A
move /bin/Release/net6.0/.git/ /bin/Release/net6.0/Block/
rm /bin/Release/net6.0/Published/*
A
dotnet publish -c Release -o /bin/Release/net6.0/Published/

cd /bin/Release/net6.0/Block/
move ../Published/wwwroot/*
git add *
git commit -m "published gh-pages branch"
git push


cd /bin/Release/net6.0/publish/sax
