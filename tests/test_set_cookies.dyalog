r←test_set_cookies dummy;t;result;port;url
url←'http://localhost:8090'
result←#.HttpCommand.Get (url,'/set_cookies')
r←0 200 t.check result.(rc HttpStatus)
r⍪←'cookie missing'/⍨(⊃result.Cookies).(('id'≡Name)⍲((122∘≥∧.∧48∘≤)⎕ucs Value))