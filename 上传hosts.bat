copy /y "F:\shared\hosts.txt" "F:\shared\hosts_old.txt"
copy /y "%SystemRoot%\system32\drivers\etc\hosts" "F:\shared\hosts.txt"
copy /y "%SystemRoot%\system32\drivers\etc\hosts" "F:\Documents\SourceTree\GoHosts\hosts.txt"
F:
cd "F:\Documents\SourceTree\GoHosts\"
git add hosts.txt
git commit -m "update hosts.txt"  
git push origin gh-pages
::master

pause