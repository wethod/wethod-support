# wethod-support

This repository contains all that is needed to fully generate the [Knowledge Base](http://support.wethod.com/) of [Wethod](http://www.wethod.com).

## How to run locally

* Clone this repository to your machine.
* Make sure to have Ruby installed (tested fine on Ruby 2.1.x).
* Install required dependencies with `bundle install`
* Run `jekyll serve`
* Go to [http://localhost:4000/help/](http://localhost:4000/help/)

## How to build in production

This is mostly:

```
cd wethod-support-clone
bundle exec jekyll build --destination $target_folder -c _config.yml,_private_config.yml
```
