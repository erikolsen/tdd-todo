require 'spec_helper'

describe Task do

  let (:task) {Task.new('Run', 'Marathon', 'Active')}

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
      incomplete_task = Task.new('Laundry', 'Clean up dirty clothes')
      expect(incomplete_task.status).to eq('incomplete')
    end

  end #context#initialize-end
end #describe Task-end
