

When(/^I build the Dockerfile\.$/) do
  @image = build_docker_image('.')
end

Then(/^a Docker image for this Dockerfile should exist\.$/) do
  expect(@image.id).to match('([a-z]|[0-9]){12}')
end
