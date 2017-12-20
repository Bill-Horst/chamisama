require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:user2) { FactoryBot.create(:user) }

# -------------------------------------- GET INDEX
    describe 'GET #index' do

      context 'when a user is logged in' do
        before do
          sign_in user

          it 'can view user index' do
            get :index
            expect(response).to redirect_to(users_path)
          end

        end
      end

      context 'when a user is not logged in' do

        it 'cannot view user index' do
          get :index
          expect(response).to redirect_to(new_user_session_path)
        end

      end

    end # END GET INDEX

# -------------------------------------- GET SHOW
  describe 'GET #show' do

    context 'when a user is logged in' do
      before do
        sign_in user

        it 'loads correct user details' do
          get :show, params: { id: user.id }
          expect(assigns(:user)).to eq user
        end

        it 'cannot access another user\'s profile' do
          get :show, params: { id: user2.id }
          expect(response).to redirect_to(root_path)
        end

      end
    end

    context 'when a user is not logged in' do

      it 'redirects to login' do
        get :show, params: { id: user.id }
        expect(response).to redirect_to(new_user_session_path)
      end

    end

  end # END GET SHOW

# -------------------------------------- GET EDIT
  describe 'GET #edit' do
    context 'when user is logged in' do
      before do
        sign_in user

        it 'can edit own user info' do
          get :edit, params: { id: user.id }
          expect(assigns(:user)).to eq user
          expect(response).to redirect_to(edit_user_path)
        end

        it 'cannot edit other user\'s info' do
          get :edit, params: { id: user.id }
          expect(response).to redirect_to(root_path)
        end
      end
    end

    context 'when user is not logged in' do

      it 'cannot edit any user info' do
        get :edit, params: { id: user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end

  end # END GET EDIT

end # END DESCRIBE USERS CONTROLLER
