#!/usr/bin/env rake
# frozen_string_literal: true

begin
  require 'bundler/setup'
end

load 'lib/tasks/forem_tasks.rake'

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'spec', 'support')
load 'spec/lib/tasks/forem_spec_tasks.rake'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task default: :spec

Bundler::GemHelper.install_tasks

task test_app: 'forem:dummy_app'
