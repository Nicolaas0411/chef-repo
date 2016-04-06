Jenkins PHP Cookbook
====

## Introduction

This cookbook install the [Jenkins CI](http://jenkins-ci.org/) and config [PHP Template](http://jenkins-php.org/index.html).

## Requirements

Chef 0.10.10+ for platform_family use.

## Usage

* Go to localhost:8080
* Click on "New Job".
* Enter a "Job name".
* Select "Copy existing job" and enter "php-template" into the "Copy from" field.
* Click "OK".
* Uncheck the "Disable Build" option.
* Fill in your "Source Code Management" information.
* Configure a "Build Trigger", for instance "Poll SCM".
* Click "Save".
* Add folder 'files' in your project root, like: 
<pre>
		`-- your project
		    	|-- build.xml
				|-- build
					|-- phpcs.xml 
					|-- phpdox.xml
					|-- phpmd.xml
					|-- phpunit.xml
					|-- logs
					    |-- checkstyle.xml
					    |-- clover.xml
					    |-- crap4j.xml
					    |-- jdepend.xml
					    |-- junit.xml
					    |-- phploc.csv
					    |-- pmd-cpd.xml
					    |-- pmd.xml</pre>

## Platform Tested

- Ubuntu 12.04 LTS 32-bit (precise32)

## Dependencies
- [acfreitas/php](https://github.com/acfreitas/php)
- [opscode-cookbooks/apt](https://github.com/opscode-cookbooks/apt) 
- [opscode-cookbooks/jenkins](https://github.com/opscode-cookbooks/jenkins)

## More information
Check the [Chef Solo documentation](https://docs.chef.io/chef_solo.html)
