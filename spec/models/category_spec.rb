require 'rails_helper'

RSpec.describe Category, type: :model do
  
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :title }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
  end
  
  describe 'Associations' do 
    it { should have_many( :products) }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:category)).to be_valid
    end
  end
end
