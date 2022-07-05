require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#laundry?' do
    it 'returns true when the title is laundry' do
      task = Task.create!(title: 'laundry', description: 'clean clothes')

      expect(task.laundry?).to be(true)
    end

    it 'returns false when the title is not laundry' do
      task = Task.create!(title: 'bagels', description: 'clean clothes')

      expect(task.laundry?).to be(false)
    end


    it 'returns true when the description is laundry' do
      task = Task.create!(title: 'Clean my clothes', description: 'laundry')

      expect(task.laundry?).to be(true)
    end
  end

end