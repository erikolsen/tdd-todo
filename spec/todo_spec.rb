require 'spec_helper'

describe Task do

  let (:task) {Task.new('Run', 'Marathon')}

  context '#initialize' do
    it "creates a new Task object with three arguments" do
      expect(task.title).to eq('Run')
      expect(task.description).to eq('Marathon')
    end

    it "Upon initializing the default status should be 'incomplete'" do
      expect(task.status).to eq('Incomplete')
    end

    it "Upon initializing the created_at should be set to the current Time" do
      expect(task.created_at.to_s).to eq(Time.now.to_s)
    end

  end #context#initialize-end

  context '#mark_as_complete!' do
    it "has a method called 'mark_as_complete!'" do
      # incomplete_task = Task.new('Laundry', 'Clean up dirty clothes')
      expect(task).to respond_to :mark_as_complete!
    end

    it "changes the status of a class to 'Complete'" do
      expect(task.mark_as_complete!).to change{ task.status }.to eq('Complete')
    end
  end #context#mark_as_complete!-end
end #describe Task-end
