#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright (C) 2013 Arthur Maltson
#
# MIT License

dotfile_templates = %w(gemrc irbrc pryrc tmux.conf vimrc)

dotfile_templates.each do |dotfile|
  template "#{ENV['HOME']}/.#{dotfile}" do
    source "#{dotfile}.erb"
    owner node['current_user']
  end
end
