require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'MDapp'" do
      visit '/static_pages/home'
      expect(page).to have_content('MDapp')
    end

	it "should have title 'Home'" do
		visit '/static_pages/home'
		expect(page).to have_title('MDapp | Home')
	end

  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

	it "should have title 'Help'" do
		visit '/static_pages/help'
		expect(page).to have_title('MDapp | Help')
	end

  end

    describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

	it "should have title 'About Us'" do
      visit '/static_pages/about'
	  expect(page).to have_title('MDapp | About Us')
	end

  end


end

