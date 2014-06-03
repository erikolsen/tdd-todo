require 'spec_helper'

describe Task do

  let (:task) {Task.new('Run', 'Marathon')}

  context '#initialize' do

    it "should have title" do
      expect(task.title).to eq('Run')
    end

    it "should have description" do
      expect(task.description).to eq('Marathon')
    end

    it "should have a status" do
      expect(task.status).to eq('Active')
    end

    it "should have a created_at" do
      # mock time.now to always return the same time
      now = Time.now
      expect(Time).to receive(:now).and_return(now)
      expect(task.created_at).to eq(now)
    end

    it "Upon initializing the default status should be 'incomplete'" do
      expect(task.status).to eq('Incomplete')
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
