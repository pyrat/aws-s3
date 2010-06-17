#!/usr/bin/env ruby

# Author: Alastair Brunton
# This is for testing google storage.


require File.dirname(__FILE__) + '/../lib/aws/s3'

include AWS::S3

AWS::S3::Base.establish_connection!(
    :access_key_id     => ENV['GOOGLE_ACCESS_KEY_ID'],
    :secret_access_key => ENV['GOOGLE_SECRET_ACCESS_KEY'],
    :default_host => ENV['GOOGLE_SERVER']
  )


# bucket = Bucket.find('excitedmedia')
# # file = '/Users/alastairbrunton/dumps/clutter.gif'
# # filename = File.basename(file)
# # puts "STORING=#{filename}"
# # S3Object.store(filename, open(file), 'excitedmedia')
# 
# puts bucket
# 
# 
# 
# 
# 
# 



