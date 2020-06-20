require 'rails_helper'

RSpec.describe "TasksControllers", type: :request do
  let!(:task) {FactoryBot.create_list(:random_task, 1)}

  describe "GET tasks" do
    it 'request list of all tasks' do
      task = Task.create(name: 'Test task')
      get tasks_path
      expect(response).to have_http_status(302)
    end
  end
end
