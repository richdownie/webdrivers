

module.exports = {
    url: 'https://www.google.com',
    elements: {
        searchInput: by.name('q')
    },
    performSearch: function (searchQuery) {
        var selector = page.googleSearch.elements.searchInput;
        return driver.findElement(selector).sendKeys(searchQuery, selenium.Key.ENTER);
    }
};


