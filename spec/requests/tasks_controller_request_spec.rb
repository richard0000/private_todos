require 'rails_helper'

RSpec.describe "TasksControllers", type: :request do
  let!(:user) { FactoryBot.create(:user) }

  describe "GET tasks" do
    it 'request list of all tasks' do
      sign_in user
      task_for_user = Task.create(name: 'Testing task fo user', user_id: user.id)

      get tasks_path
      expect(response).to have_http_status(:success)
      expect(response.body).to include('Testing task fo user')
    end
  end
end
