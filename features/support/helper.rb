require 'docker'
require 'serverspec'

def build_docker_image(dir)
  Docker::Image.build_from_dir('.')
end
