# echo-a-into-a-JSON-pass
echo a "\\\\" or a "!" into a JSON file pass looks simple, however it can be tricky. Here an example how to include the string "production\\\\frontend" and "MyPass!" into a file like this:

secured {
cfs-user = "production\\\\frontend"
cfs-pass = "Jencomart1"
PromApp-user = "MyPromAppUser"
PromApp-pass = "MyPromApppass!"
}
