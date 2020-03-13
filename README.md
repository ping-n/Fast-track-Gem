# Roster App

## Software Development Plan

### Purpose
The purpose of the roster app is provide users with a tool create employee profiles and assign roster to their employees.

The main target audience for this app is managers and small business owners who will be able to keep track of their employee's shift. Many managers and small owners still tracks their employee and assign shift through paper documents. Paper documents are convenient to use but they take up physical space and can easily be misplaced or sabotage by others. The roster app will provide users with a simple and interactive prompt to input data and store in a csv file for further use. The roster app will solve a lot of employer issue when hiring as they can quickly create an employee profile, input basic details about the employee which they return to change at will.

### Features
There are two main feature for this app, the ability to create new employee profile and assigning shifts to employee. The user will be able to create many employee profile which will be store in a csv file, the user can then update any existing employee profile to change any original value that they assigned to the employee. 
The second main feature of the app is to provide the user with the ability to assign shift to employee which will be saved to a separate cv file which store all the shift that they assigned for their employee. The other feature of the app to show a quick list all employee or shift by simply selecting the correct prompts from menu.

Start up example

Menu page: 
  1: Create employee profile
    ==> asking user for input about the employee
      => first name, last name, age and gender
  2: Update employee profile
    ==> confirm which employee they want to change
      => ask which part of the data they want to change like first name, last name, age or gender
  3: Assign Shift
    ==> asking user to select the day, input name, start time and end time
  4: View all employee profiles
    => print out data about existing in the terminal
  5: View all shifts
    => print out data about existing shift in the terminal
### UMLping

![UML Diagram](./docs/uml)

### Resources
[My app building process](https://trello.com/b/eLUrMcdd/terminal-app)
[UML Diagram](https://www.lucidchart.com/invitations/accept/98b1f7c4-8408-42c2-a2bf-3874764834fa)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pings_fast_track_gem'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install pings_fast_track_gem

## Usage

### Installing Ruby
Mac OS:

1: You will need to install ruby on your mac os

I recommend using a package manager like homebrew

you can run the the following command on your terminal (to access terminal, you can search terminal in finder with cmd + space  and type 'terminal' in the prompt)

    $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


Use the homebrew to install rbenv through the following command in terminal

    $ brew install rbenv

Set up rbenv

    $rbenv init
Close your terminal window and one a new one (for your changes to take effect)
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pings_fast_track_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/pings_fast_track_gem/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PingsFastTrackGem project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/pings_fast_track_gem/blob/master/CODE_OF_CONDUCT.md).
