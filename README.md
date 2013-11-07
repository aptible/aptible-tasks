# Aptible::Tasks

[![Build Status](https://travis-ci.org/aptible/aptible-tasks.png?branch=master)](https://travis-ci.org/aptible/aptible-tasks)
[![Dependency Status](https://gemnasium.com/aptible/aptible-tasks.png)](https://gemnasium.com/aptible/aptible-tasks)

Shared Rake tasks for Aptible projects.

## Installation

Add this line to your application's Gemfile:

    gem 'aptible-tasks'

And then run `bundle install`.

## Usage

Add the following to your Rakefile:

    require 'aptible/tasks'
    Aptible::Tasks.load_tasks

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

Copyright (c) 2013 [Aptible](https://www.aptible.com), [Frank Macreery](https://github.com/fancyremarker), and contributors.
