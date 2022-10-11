git add *
git commit -m "saved main branch"
git push
move bin/Release/net6.0/Block/.git/ bin/Release/net6.0/

remove-item -path "$bin/Release/net6.0/Block/*" -recurse

move bin/Release/net6.0/.git/ bin/Release/net6.0/Block/
remove-item -path "$bin/Release/net6.0/Published/*" -recurse

dotnet publish -c Release -o bin/Release/net6.0/Published/

cd bin/Release/net6.0/Block
move ../Published/wwwroot/*
git add *
git commit -m "published gh-pages branch"
git push

powershell -NoExit D:/Block/publish.ps1
