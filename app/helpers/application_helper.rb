#require_relative './title_bundle_helper';
module ApplicationHelper
  
  def getTitle
    baseTitle = TitleBundleHelper.getMessage("base_title");
    title = (@title != nil || @title != '') ? baseTitle + " | " + @title : baseTitle;  
    return title;
  end
  
end
