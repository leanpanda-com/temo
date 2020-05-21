# TEMO - Admin theme for BEMO

## Installation
### Rails
Install the submodule in vendor directory
```
git submodule add git@github.com:leanpanda-com/temo.git vendor/temo
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


## Configuration
### Add custom icons
If you need some additional icons, put the svg file into `app/javascript/stylesheets/images/icons`
and override this variable into your `application.sass` variable.
```
$images-prefix-path: './'
$custom-background-icons("my-icon":"file-name.svg")
```

## Contributions
### Create new commits
If you have some fixes to do in TEMO, you can edit files directly into your submodule directory.
After that, create a commit inside the submodule and then push it
```
cd vendor/temo
git add --patch
git commit --message "....."
git push origin HEAD:master
```

### Update subbmodule(s)
```
git submodule foreach git pull origin master
git add --patch
git commit -m "Update submodules"
```
