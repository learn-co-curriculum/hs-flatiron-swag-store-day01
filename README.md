---
tags: forms, kids, ruby, advanced, challenges
language: ruby
level: 2
type: challenges
---

## Flatiron Swag Shop!

People love our Flatiron swag so much they are [singing about it](https://docs.google.com/a/flatironschool.com/file/d/0B_qWLnYbXOdPS2tMbHVpOG1GUVE/edit). We desperately need your help building an app to sell our sweet Flatiron merch. Follow the steps below to get started.

**Step 1** - Set up your app and MVC directories.

**Step 2** - Set up your config directory with your environment file (Hint: It's totally okay to copy the environment file from your Fwitter project.)

**Step 3** - Set up your public directory with directories for css, img and js.

**Step 4** - Set up your config.ru and Gemfile (totally okay to copy from Fwitter again!)

**Step 5** - Now for the MVC. In the words of Yeezy, it's all about the models. We'll start off with one model for Items with the following attributes:

```ruby
:name
:image_url 
:price
:count
```

Create an `item.rb` file in your models directory and set up your `Item` class with attribute accessors, and an `ALL_ITEMS` array to hold `Item` instances (each item should get pushed into the `ALL_ITEMS` array when it is initialized). Also, set up a `self.all` method that will return this array. Take a looks at your Tweet model in the Fwitter project for hints on how to do this.

**Step 6** - We've got the M covered, now let's move onto the V. In your views directory create an `items.erb` file that will display all of the merch for our store - including each item's name, photo and price.

**Step 7** - Set up your `get '/items'` route to pull all of your items and display them in your new `items.erb` template. You'll also need to create some Items within this route. Here are some image urls that you can use:

+ [hat](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_hat.jpg)
+ [hoodie](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_hoodie.jpg)
+ [men's tee](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tee_m.jpg)
+ [women's tee](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tee_w.jpg)
+ [tote](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tote.jpg)

You can set your own price and count (how much of the item is in stock) but remember these items are in HIGH demand! 

Now boot up your server with `rackup`, head to `localhost:9292` and take a look at that swag!

## Bonus Challenges
+ Set up a form that lists all the items and allows users to chose how many of each item they would like to order. Hint: There is a `type="number"` attribute for form inputs. Google it! 
  * When the form is submitted the order total is tallied up and the user is displayed a page with the total cost of the order and the items being ordered.
