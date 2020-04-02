#!/usr/bin/ruby
require 'irb/completion'
require 'irb/ext/save-history'
require 'rubygems'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

IRB.conf[:PROMPT_MODE] = :SIMPLE

IRB.conf[:AUTO_INDENT] = true

class Clippy
  def paste
    IO.read("|pbpaste").chomp
  end

  def copy(string)
    IO.popen("pbcopy", "w") do |p|
      p.puts(string)
    end
    string
  end

  def <<(string)
    copy(paste + string)
  end

  def clear
    copy("")
  end

  def to_s
    paste
  end

  def inspect
    to_s
  end
end

def clippy
  @clippy ||= Clippy.new
  @clippy.copy yield if block_given?
  @clippy
end

load File.expand_path("~/.irbrc.local") if File.exists?(File.expand_path("~/.irbrc.local"))
