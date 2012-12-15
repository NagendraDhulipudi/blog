require 'posts_helper.rb'
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
