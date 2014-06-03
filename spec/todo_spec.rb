require 'spec_helper'

describe Task do
  let (:task) {Task.new('Run', 'Marathon', 'Active')}

  context '#initialize' do
    it "creates a new Task object with three arguments" do
      expect(task.title).to eq('Run')
      expect(task.description).to eq('Marathon')
      expect(task.status).to eq('Active')
      # expect(task.created_at).to eq(Time.now)
    end
  end
end
