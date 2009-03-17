module MainHelper
  
  def show_results
    update_page do |page|
      page.show 'results'
    end
  end
end
