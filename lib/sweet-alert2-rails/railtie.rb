require 'sweet-alert2-rails/view_helpers'

module SweetAlert2Rails
  class Railtie < Rails::Railtie
    initializer 'sweet_alert2_rails.view_helpers' do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
