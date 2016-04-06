name "polymorph"
description "Installs and configures Jenkins and Sonar"

default_attributes(
  'sonarqube' => {
    'web' => {
      'port' => 9030
    },
  },
  'jenkins' => {
   'master' => {
    'port' => 9080
   },
  },
)

run_list(
  'recipe[apt::default]',
  'recipe[java::default]',
  'recipe[sonarqube::default]',
  'recipe[jenkins::master]',
)
