require 'rails_helper'

describe SimplePagesController, type: :controller do
  # -------------------------------------- GET INDEX
  context 'GET #index' do

    it 'renders the index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end # END GET INDEX

    # --------------------------------------GET LANDING PAGE

    context 'GET #landing_page' do

      it 'renders the landing page' do
        get :landing_page
        expect(response).to be_ok
        expect(response).to render_template('landing_page')
      end
    end # END GET LANDING PAGE
end # END DESCRIBE SIMPLE PAGES CONTROLLER
