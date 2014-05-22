require 'spec_helper'

describe Project do
  describe "#ordered_entries" do
    before :each do
      @user = User.new(email: "user@user.com", password: "test", password_confirmation: "test")
      @user.save
      @project     = Project.create(user: @user, title: "this is a title", logline: "this is a description")
      @entry_one   = Entry.create(content: "this is content for one", category: "test", user: @user)
      @entry_two   = Entry.create(content: "this is content for two", category: "test", user: @user)
      @entry_three = Entry.create(content: "this is content for three", category: "test", user: @user)
      @entry_four  = Entry.create(content: "this is content for four", category: "test", user: @user)

      @project.entries << @entry_one
      @project.entries << @entry_two
      @project.entries << @entry_three
      @project.entries << @entry_four

      Joiner.find_by(entry: @entry_one).update(position: 3)
      Joiner.find_by(entry: @entry_two).update(position: 2)
      Joiner.find_by(entry: @entry_three).update(position: 4)
      Joiner.find_by(entry: @entry_four).update(position: 1)
    end

    it "returns all of the entries" do
      expect(@project.ordered_entries).to match_array(@project.entries)
    end

    it "returns them in the order set in the join table" do
      expect(@project.ordered_entries).to eq([@entry_four, @entry_two, @entry_one, @entry_three])
    end
  end
end