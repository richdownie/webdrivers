class GoogleSearch
  include PageObject

  def search_input
    @browser.first(name: 'q')
  end
end