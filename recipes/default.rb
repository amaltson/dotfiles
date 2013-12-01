#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright (C) 2013 Arthur Maltson
#
# MIT License

dotfiles = %w(gemrc irbrc pryrc tmux.conf vimrc)

dotfiles.each do |dotfile|
  cookbook_file "#{ENV['HOME']}/.#{dotfile}" do
    source dotfile
    owner node['current_user']
  end
end
