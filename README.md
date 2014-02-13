Searchkick dummy app
====================

Created to show existing bug with searchkich index

1. clone
2. `bundle install`
3. make sure mongoid is running
4. make sure elastic search is runnig
5. run tests `bundle exec rspec` (All tests should `pass`, right now two `fail`

It should fail outside test `env` too. Not sure why it `pass` now. I will try to find a reason (changes between those dummy app and more complex one) and update those code.
