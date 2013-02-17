require 'active_record'
require 'mysql2'
require 'yaml'
require 'xmlsimple'

@database = YAML::load(File.open('database.yml'))
ActiveRecord::Base.establish_connection @database

class Phile < ActiveRecord::Base
  attr_protected 

  self.table_name = "files"
  self.primary_key = :idFile
end

watched = XmlSimple.xml_in 'watched.xml'
watched["file"].each do |w|
  begin
    phile = Phile.where(:strFilename => w["content"]).first
    if phile
      puts "marking '#{phile.strFilename}' as watched..."
      phile.playCount ||= 1
      phile.save
    end
  rescue Exception => e
    puts "error! #{e.inspect}"
  end
end
