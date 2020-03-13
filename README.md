# Roster App

## Software Development Plan

### Purpose
The purpose of the roster app is provide users with a tool create employee profiles and assign roster to their employees.

The main target audience for this app is managers and small business owners who will be able to keep track of their employee's shift. Many managers and small owners still tracks their employee and assign shift through paper documents. Paper documents are convenient to use but they take up physical space and can easily be misplaced or sabotage by others. The roster app will provide users with a simple and interactive prompt to input data and store in a csv file for further use. The roster app will solve a lot of employer issue when hiring as they can quickly create an employee profile, input basic details about the employee which they return to change at will.

### Features

#### Create Employee
This is the starting features of the terminal app, it allows user to create a new employee profile from scratch. The create employee command will request user to input  data about the employee profile they want to create, asking for basic details such as the full name, age and gender. (Once privacy features is implemented, the data input can be expand to include address, phone and email or others details the employer may need)

#### Update Employee
This feature enable the user to input the name of employee they wish to to update and match it with the name of the employee in the database. The terminal grab that employee profile from the database and allow user to select which details they wish to change or update.

#### Assign Shift
This feature allow the user to create a shift for any employee by asking of for the name, the day of the week, starting time of the shift and end time of the shift. (Future will include the ability customer more details of the shift, including starting area or position such as full time or part time)

#### View existing employee profile and shift
This feature allow the user to view the existing data store in the csv files and list them in the terminal. Future features will make it more user friendly by displaying the data in clean manner in order for the user to quickly find the information they need, also implement a search and filter function.

#### Example layout
Menu page:
  <ul>
  <li> Create employee profile</li>
    ==> asking user for input about the employee
    ==> first name, last name, age and gender
  <li> Update employee profile </li>
    ==> confirm which employee they want to change
      => ask which part of the data they want to change like first name, last name, age or gender
   <li> Assign Shift </li>
    ==> asking user to select the day, input name, start time and end time
  <li> View all employee profiles  </li>
    ==> print out data about existing in the terminal
  <li> View all shifts </li>
    ==> print out data about existing shift in the terminal
</ul>

## Project planning and implementation

The planning involve brainstorming how to implement the features and how to make the terminal app as user friendly as possible. The early app prototype involve many users inputs, basically asking the user to input everything, this can become a tedious task for users therefore the many users input was removed from the app through the use of tyy-prompt gem. The tty-prompt provide a fast and simple method to gather user inputs through selection and filter that allow user to specifies what they want. 

### Checklist


High priority:
<ol>
  <li>Planning of idea</li>
  <li>Menu system</li>
  <li> Create employee profiles</li>
  <li> Data persistence through csv </li>
  <li> Update employee profiles</li>
  <li>Ensure MVP by due date</li>
  <li>Assign shift feature<li>
</ol>



Medium priority:
<ol>
  <li>View employee feature</li>
  <li>View all shift feature</li>
  <li>Running rubocop</li>
  <li>Testing</li>
  <li>using gems such as tty-prompt to provide clean terminal prompt for user input</li>
</ol>
<br />


Low priority (future update):
<ol>
  <li>Data security</li>
  <li>login feature</li>
  <li>Storing more data such as expanding creating employee profile features to ask for more information</li>
  <li>Testing</li>
</ol>
<br />
    
### UML and Trello

![UML Diagram](./docs/uml.png)<br />

![Trello1](./doc/t1.png)<br />

![Trello2](./doc/t2.png)<br />

### Testing
Some manual testing was done on the terminal app to ensure MVP, some minor bug were found and recorded to be fix in future patches

[Manual Testing](https://docs.google.com/spreadsheets/d/1EdQasinQsBZe7woDLr1d8weSilS7EZtF6YNYbAlWxWo/edit?usp=sharing)

### links
[Management process](https://trello.com/b/eLUrMcdd/terminal-app)
[UML Diagram](https://www.lucidchart.com/invitations/accept/98b1f7c4-8408-42c2-a2bf-3874764834fa)

## Usage

### Installing Ruby

### Mac OS:

1: You will need to install ruby on your mac os

I recommend using a package manager like homebrew

you can run the the following command on your terminal (to access terminal, you can search terminal in finder with cmd + space  and type 'terminal' in the prompt)

    $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


Use the homebrew to install rbenv through the following command in terminal

    $ brew install rbenv

Set up rbenv

    $rbenv init

Close your terminal window and one a new one (for your changes to take effect)
Verify that rbenv is setup properly by running the rbenv-doctor script
$ If there are no errors you are ready to go. You should see something like the following output,

  Checking for `rbenv' in PATH: /usr/local/bin/rbenv
  Checking for rbenv shims in PATH: OK
  Checking `rbenv install' support: /usr/local/bin/rbenv-install (ruby-build 20170523)
  Counting installed Ruby versions: none
  There aren't any Ruby versions installed under `~/.rbenv/versions'.
  You can install Ruby versions like so: rbenv install 2.2.4
  Checking RubyGems settings: OK
  Auditing installed plugins: OK

Install Ruby 2.7.0
Pease run the following command

    $ rbenv install 2.7.0

check to make sure you are on 2.7.0

    $ ruby --version 

## Window
It is recommended to use Mac os for ruby however you can install ruby with the rubyinstaller

    $https://rubyinstaller.org/

follow the instruction from the website

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'pings_fast_track_gem'
```

And then execute:

    $ bundle install pings_fast_track_gem

Or install it yourself as:

    $ gem install pings_fast_track_gem
    $ gem install tty-prompt
    $ gem install pastel
    $ gem install colorize
    $ gem install artii

### Starting the terminal app
This instruction is designed for the terminal app being install on your Desktop
locate the exe file in the src folder
run the command exe called Application starter.command

![Run this file](./docs/cmdfile.png)

if top command does not work, please run as per usual in your terminal with the following command from your home directories. (Folder must in on you desktop)

change your directories to your Desktop through your command terminal

    $ cd PingNge_T1A2/src/lib
    $ ruby pings_fast_track_gem

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pings_fast_track_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/pings_fast_track_gem/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PingsFastTrackGem project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/pings_fast_track_gem/blob/master/CODE_OF_CONDUCT.md).
