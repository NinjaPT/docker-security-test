
Given(/^The "([^"]*)" binary exists\.$/) do |binary|
  expect(which(binary)).to_not equal nil
end

Given(/^a "([^"]*)" file is present\.$/) do |file|
  expect(File.file?(file)).to equal true
  expect(File.exist?(file)).to equal true
end

Given(/^a Docker image has been built\.$/) do
  @image = build_docker_image('.')
  set :backend, :docker
  set :os, :family => :ubuntu
  set :docker_image, @image.id
end

Given(/^a container is running\.$/) do
  @container = Docker::Container.create(
    'Image' => @image.id,
    'name' => 'container-to-delete-'+ Time.now.tv_usec.to_s,
  )

  @container.start
  puts @container.id
end


Then(/^stop containers\.$/) do
  puts @container.id
  @container.kill
  @container.delete(:force => true)
end
