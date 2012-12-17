require 'spec_helper'

  describe "posts" do
    it "should have the title 'Snapfish In Rails'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get posts_index_path
#      response.status.should be(200)
      visit '/posts/index'
#      page.should have_content("Login")
      page.should have_selector('title',
				:text => "Snapfish Rails App")
    end
  end
