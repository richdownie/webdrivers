



class GoogleSearch
  include PageObject
  text_field(:name, name: 'q')
  def perform_search(value)
    self.name = (value)
    @browser.action.send_keys(:enter).perform
  end
end