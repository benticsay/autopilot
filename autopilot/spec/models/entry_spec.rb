require 'spec_helper'

describe Entry do
  describe "#position_in_project" do
    it "returns the position in the given project" do
      user = User.new(email: "user@user.com", password: "test", password_confirmation: "test")
      user.save
      project = Project.create(user: user, title: "this is a title", logline: "this is a description")
      entry   = Entry.create(content: "this is content for one", category: "test", user: user)
      project.entries << entry

      Joiner.find_by(entry: entry).update(position: 3)

      expect(entry.position_in_project(project)).to be(3)
    end
  end
end