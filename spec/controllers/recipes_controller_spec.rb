require 'rails_helper'

RSpec.describe RecipesController, type: :controller, vcr: true do
  describe 'GET index' do
    it 'returns a 200' do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'assigns @recipes' do
      get :index
      expect(assigns(:recipes).count).to be > 0
    end
  end

  describe 'GET show' do
    it 'returns a 200' do
      get :show, params: { id: '4dT8tcb6ukGSIg2YyuGEOm' }
      expect(response).to have_http_status(:ok)
    end

    it 'renders the show template' do
      get :show, params: { id: '4dT8tcb6ukGSIg2YyuGEOm' }
      expect(response).to render_template('show')
    end

    it 'assigns @recipe' do
      get :show, params: { id: '4dT8tcb6ukGSIg2YyuGEOm' }
      expect(assigns(:recipe)).to be_a(Contentful::Entry)
    end

    it 'fails with wrong id' do
      get :show, params: { id: 'def' }
      expect(assigns(:recipe)).to be_nil
    end
  end
end
