# TEMO - Admin theme for BEMO

## Installation
### Rails
Clone the submodule in vendor directory
```
git clone git@github.com:cantierecreativo.net/temo.git vendor/temo
```

Create a symlink under app/javascript/stylesheets

```
cd app/javascript/stylesheets
ln -s ../../../vendor/temo/sass temo
```

Copy icons
```
mkdir -p app/javascript/stylesheets/images/icons
cp vendor/temo/icons/*.svg app/javascript/stylesheets/images/icons
```

Copy this code into `app/javascript/stylesheets/application.sass`
```
$images-prefix-path: './'
@import temo/application
```

Add this in `app/javascript/pack/application.js`
```
import 'stylesheets/application'
```


If you need to use simple_form
```
cp vendor/temo/simple_form_initializer.rb config/initializers/simple_form.rb
```
