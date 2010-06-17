#!/usr/bin/env ruby

# Author: Alastair Brunton
# This is for testing google storage.


require File.dirname(__FILE__) + '/../lib/aws/s3'

include AWS::S3

AWS::S3::Base.establish_connection!(
    :access_key_id     => ENV['GOOGLE_ACCESS_KEY_ID'],
    :secret_access_key => ENV['GOOGLE_SECRET_ACCESS_KEY'],
    :server => ENV['GOOGLE_SERVER']
  )


bucket = Bucket.find('excitedmedia')
# file = '/Users/alastairbrunton/dumps/clutter.gif'
# filename = File.basename(file)
# puts "STORING=#{filename}"
# S3Object.store(filename, open(file), 'excitedmedia')

bucket.objects.each do |object|
   public_g = ACL::Grant.grant(:public_read)
    unless object.acl.grants.include? public_g
     object.acl.grants << public_g
     object.acl(object.acl)
     p "SET_ACL=" + object.key
   end
end










