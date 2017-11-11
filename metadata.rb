name             'docker_host'
maintainer       'Jesse Cotton'
maintainer_email 'jcotton1123@gmail.com'
source_url       'https://github.com/JCotton1123/chef-docker_host'
issues_url       'https://github.com/JCotton1123/chef-docker_host/issues'
license          'All rights reserved'
description      'Installs/Configures docker host'
long_description 'Installs/Configures docker host'
version          '0.3.0'

supports 'ubuntu'

depends 'chef-apt-docker', '~> 2.0'
depends 'docker', '~> 2.17'
