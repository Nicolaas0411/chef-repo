name "jenkins"
description "Installs and configures Jenkins and Sonar"

default_attributes(
  'sonarqube' => {
    'web' => {
      'port' => 9030
    },
  },
)

run_list(
  'recipe[apt::default]',
  'recipe[java::default]',
  'recipe[sonarqube::default]',
)
