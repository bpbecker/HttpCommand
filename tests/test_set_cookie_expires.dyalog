{r}←test_set_cookies_expires dummy;c;result
c←#.HttpCommand.New'get' 'http://localhost:8090/set_cookies/expires'
{}c.Run
{}c.Run
r←'Cookies not set'/⍨2≢≢c.Cookies.Value
⎕DL 3
{}c.Run
r⍪←'Cookies did not expire'/⍨1≢≢c.Cookies.Value
