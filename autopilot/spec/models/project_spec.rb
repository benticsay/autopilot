require 'spec_helper'

describe Project do
  describe "#entries_ordered" do
    it "returns all of the entries" do
      user = User.new(email: "user@user.com", password: "test", password_confirmation: "test")
      user.save
      project     = Project.create(user: user, title: "this is a title", logline: "this is a description")
      entry_one   = Entry.create(content: "this is content for one", category: "test", user: user)
      entry_two   = Entry.create(content: "this is content for two", category: "test", user: user)
      entry_three = Entry.create(content: "this is content for three", category: "test", user: user)
      entry_four  = Entry.create(content: "this is content for four", category: "test", user: user)

      project.entries << entry_one
      project.entries << entry_two
      project.entries << entry_three
      project.entries << entry_four

      expect(project.entries_ordered).to contain_exactly(project.entries)
    end
  end
end