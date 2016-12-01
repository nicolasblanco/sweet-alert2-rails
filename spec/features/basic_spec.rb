require 'spec_helper'

RSpec.describe "general working", js: true do
  describe 'clicking Cancel button' do
    it 'does not trigger the action' do
      visit '/'

      expect(page).to have_content 'Hello'
      expect(page).not_to have_content 'Are you sure?'

      click_link 'Delete user'
      sleep 1
      expect(page).to have_content 'Are you sure?'
      click_button 'Cancel'
      sleep 1
      expect(page).not_to have_content 'User deleted'
    end
  end

  describe 'clicking Ok button' do
    it 'does trigger the action' do
      visit '/'

      expect(page).to have_content 'Hello'
      expect(page).not_to have_content 'Are you sure?'

      click_link 'Delete user'
      sleep 1
      expect(page).to have_content 'Are you sure?'
      click_button 'Ok'
      sleep 1
      expect(page).to have_content 'User deleted'
    end
  end
end
