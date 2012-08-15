#!/usr/bin/env ruby

class MegaGreeter
  attr_accessor :names

  def initialize (names="World")
    @names = names
  end

  # say hi to everybody
  # if name is nil then hello world!
  # else for each elements in the list, then hello to all
  # else hello to just the one person
  def hi
    if @names.nil?
      put "Hello World!"
    else if @names.respond_to?("each")
      @names.each do |name|
          puts "Hello #{name}"
      end
    else
      puts "Hello #{names}"
    end
  end

  # say bye to everybody
  def bye
    if @names.nil?
      puts "Bye World, come back soon!"
    else if @names.respond_to?("join")
      puts "Bye #{@names.join(", ")}, come baqck soon!"
    else
      puts "Bye #{names}, come back soon!"
    end
  end
end


