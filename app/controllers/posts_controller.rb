require 'posts_helper.rb'
require_relative '../helpers/title_bundle_helper'
require_relative '../helpers/cart_xml_parser'

class PostsController < ApplicationController
	def index
		@testVar = PostsHelper.readXMLFile	
	end
	
	def show
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
