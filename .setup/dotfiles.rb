require 'FileUtils'

module Dotfiles
  def self.file name
    target = "#{self.home}/.#{name}"

    puts "Copying #{target}"
    FileUtils.cp "../#{name}", target
  end

  def self.rm_dir path
    target = "#{self.home}/#{path}"

    puts "Removing #{target}"
    # FileUtils.rm_r target, :force
  end

  def self.dir path
    target = "#{self.home}/#{path}"

    puts "Copying #{target}"
    FileUtils.cp_r "../#{path}", target
  end

  def self.clear_dir path
    self.rm_dir path
    self.dir path
  end

  def self.home
    ENV[["HOME", "HOMEPATH"].detect {|h| ENV[h] != nil}]
  end
end
