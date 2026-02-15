# Load required libraries
require 'aws-sdk-s3'      # AWS SDK for interacting with S3
require 'pry'             # Debugging tool (not required for production)
require 'securerandom'    # Used to generate random UUID content for files

# Read the S3 bucket name from environment variables
bucket_name = ENV['BUCKET_NAME']
region = 'eu-north-1'

# Create an S3 client using default AWS credentials and region configuration
client = Aws::S3::Client.new

# Create a new S3 bucket
# NOTE: `region` must be defined or configured elsewhere
resp = client.create_bucket({
  bucket: bucket_name,
  create_bucket_configuration: {
    location_constraint: region
  }
})
#binding.pry

# Generate a random number between 1 and 6
# This determines how many files will be created and uploaded
number_of_files = 1 + rand(6)
puts "number_of_files : #{number_of_files}"

# Loop to create and upload files
number_of_files.times.each do |i|
  puts "i: #{i}"

  # Generate a filename
  filename = "file_#{i}.txt"
  output_path = "/tmp/#{filename}"

  # Create a temporary file and write a random UUID into it
  File.open(output_path, "w") do |f|
    f.write SecureRandom.uuid
  end

  # Open the file in binary mode and upload it to S3
  File.open(output_path, 'rb') do |f|
    client.put_object(
      bucket: bucket_name,
      key: filename,
      body: f
    )
  end
end
