#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright (C) 2013 Arthur Maltson
#
# MIT License

dotfiles = Dir.entries(node['dotfiles_project'])
dotfiles.delete_if {|file| file == '.' or file == '..' }

dotfiles.each do |dotfile|
  template "#{ENV['HOME']}/.#{dotfile.chomp('.erb')}" do
    source dotfile
    owner node['current_user']
  end
end
