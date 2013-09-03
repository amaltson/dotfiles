#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright (C) 2013 Arthur Maltson
#
# MIT License

templates_dir = "#{node['dotfiles']['dotfiles_repo']}/templates/default"
dotfile_templates = Dir.entries(templates_dir)
dotfile_templates.delete_if {|file| file == '.' or file == '..' }

dotfile_templates.each do |dotfile|
  template "#{ENV['HOME']}/.#{dotfile.chomp('.erb')}" do
    source dotfile
    owner node['current_user']
  end
end
