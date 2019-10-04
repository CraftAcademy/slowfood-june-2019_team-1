require 'rails_helper'

RSpec.describe ContactInfo, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :number }
    it { is_expected.to have_db_column :address }
    it { is_expected.to have_db_column :content }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :number }
    it { is_expected.to validate_presence_of :address }
    it { is_expected.to validate_presence_of :content }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:contact_info)).to be_valid
    end
  end
end
