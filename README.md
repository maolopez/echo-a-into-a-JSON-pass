# echo-\\\\-or-!-into-a-JSON-pass
echo a "\\\\" or a "!" into a JSON file pass looks simple, however it can be tricky. Here an example how to include the string "production\\\\frontend" and "MyPass!" into a file like this:

secured {\n
cfs-user = "production\\\\frontend"\n
cfs-pass = "Jencomart1"\n
PromApp-user = "MyPromAppUser"\n
PromApp-pass = "MyPromApppass!"\n
}

The nohup has been redirected in order to avoid Jenkins builds to hang. Files Debug-1 and Debug-2 will show you how it works!
