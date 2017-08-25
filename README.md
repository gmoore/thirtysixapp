# Thirtysix App

There's a running version of the app here:

`http://www.thirtysix.tech`

## Running On Your Own

You'll need Ruby 2.4. You'll also need the foreman gem. 

```
git clone git@github.com:gmoore/thirtysixapp.git
cd thirtysixapp
rake db:migrate
rake generate_api_key
foreman start
```

## Instrument Your App

Head over to https://github.com/gmoore/thirtysix to install the gem and start instrumenting your app.