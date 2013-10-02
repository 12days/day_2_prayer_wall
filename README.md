Day 2 - Prayer App
==================

### Getting started
To clone this repo, go to your shell:

$ `git@github.com:12days/day_2_prayer_wall.git`

If you want to generate from scratch:

$ `rails new your_app_name`

Then, after you go into that folder:
* $ `bundle install`

### Gemfile notes

As usual, we wanted to take test-driven-development approach, so we added rspec. To see how you add it to Gemfile and install it, see [rspec-rails repository](https://github.com/rspec/rspec-rails).

We also wantd to use twitter-bootstrap for our views. Too see how to add it to Gemfile, see [twitter-bootstrap-rails](https://github.com/seyhunak/twitter-bootstrap-rails).

* I ran into some trouble when I had bootstrap under `:assets` group, so took it out of the grouping.

If you plan to deploy to heroku, then sqlite3 will conflict with production database. You can check the Gemfile for details, and may also want to review this article [SQLite on Heroku](https://devcenter.heroku.com/articles/sqlite3).

We also wanted to have some authentication in order that an anonymous user can _'pray'_ for someone. So we needed authentication. To keep things simple, we decided to try [sorcery](https://github.com/NoamB/sorcery).

### Process

As before with project 1, our general process during the day was:

1. Talk through general features we would want our app to do, and keep things very __simple__.
2. Write out some basic user stories pertaining to our app. Here is an example: _As a user, I want to be able to share a ‘prayer request’ with the world by anonymously posting it. There should be nothing that would ID a posting user. (As a design element, the site would explicitly note that the post was by an anon user.)_. We had a few such bullets.
3. Generate the app, and create a framework for testing.
4. Build a feature. (Generally, we pair, but in certain instances, we also agreed to split off by creating a feature branch and working separately. We will then create [pull request](https://help.github.com/articles/using-pull-requests) back to master branch.)
5. Re-assess our progress. Are we on schedule, ahead, or behind?
6. Talk about where we are, document issues, and repeat the process.
7. At the end of the day after deploying, we'll take time to reflect. As noted I'll be blogging about it on [findinbay.blogspot.com](findinbay.blogspot.com).

### Contact ###
If you have other questions, please write: David <daviddarden11@gmail.com> or Josh <joshua.j.wilborn@gmail.com>.

### Link to 12 Days Project
What is all of this about? To learn more, check out the project home page and list of our projects at [12days 12projects](http://12days.github.io/).
