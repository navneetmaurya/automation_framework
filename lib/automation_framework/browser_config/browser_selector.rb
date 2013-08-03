module AutomationFramework
  module CreateDriver
    class BrowserSelector
      class BrowserSelectorError < StandardError; end

      def browser
        if CONFIG.browser.nil?
          raise(BrowserSelectorError, 'Please define browser in CONFIG table')
        else
          CONFIG.browser
        end
      end
    end #BrowserSelector
  end #CreateDriver
end #AutomationFramework