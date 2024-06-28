# Aptible::Tasks

[![Gem Version](https://badge.fury.io/rb/aptible-tasks.png)](https://rubygems.org/gems/aptible-tasks)
[![Dependency Status](https://gemnasium.com/aptible/aptible-tasks.png)](https://gemnasium.com/aptible/aptible-tasks)

Shared Rake tasks for Aptible projects.

## Installation

Add the following line to your application's Gemfile:

    gem 'aptible-tasks'

And then run `bundle install`.

## Usage

Add the following to your Rakefile:

    require 'aptible/tasks'
    Aptible::Tasks.load_tasks

If you're running a Rails app, include the above lines after you load your application's tasks (e.g. `MyApp::Application.load_tasks`).

## Available Tasks

| Task Name | Purpose |
| ---------:| ------- |
| `spec` | Runs the spec suite with standard formatting |
| `rubocop` | Checks code against the Aptible-approved Ruby style guide |
| `ci` | Runs the suite of tasks performed by continuous integration |

## Contributing

1. Fork the project.
1. Commit your changes, with specs.
1. Ensure that your code passes specs (`rake spec`) and meets Aptible's Ruby style guide (`rake rubocop`).
1. Create a new pull request on GitHub.

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2019 [Aptible](https://www.aptible.com) and contributors.
