require 'rails_helper'

RSpec.describe Task, type: :model do
  subject { Task.new(name: "Paperwork at the bank", completed: false) }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'first status should be false' do
    expect(subject.completed).to be(false)
  end
end
