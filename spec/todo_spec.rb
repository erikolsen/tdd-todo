require 'spec_helper'

describe Task do
  let(:task) {Task.new('Run', 'Marathon', 'Active')}

  context '#initialize' do
    it "creates a new Task object with three arguments" do
      expect(task.title).to eq('Run')
      expect(task.description).to eq('Marathon')
      expect(task.status).to eq('Active')
      expect(task.created_at.to_s).to eq(Time.now.to_s)
    end

    it "Upon initializing the default status should be 'incomplete'" do
      incomplete_task = Task.new('Laundry', 'Clean up dirty clothes')
      expect(incomplete_task.status).to eq('incomplete')
    end

  end #context#initialize-end
end #describe Task-end
