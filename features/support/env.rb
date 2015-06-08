require 'rspec'
require 'page-object'
require 'require_all'
require 'watir-webdriver'
require 'selenium-webdriver'

require_rel 'pages'

World(PageObject::PageFactory)
