#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright (C) 2013 Arthur Maltson
#
# MIT License

template "#{ENV['HOME']}/.tmux.conf" do
  source "tmux.conf.erb"
end
