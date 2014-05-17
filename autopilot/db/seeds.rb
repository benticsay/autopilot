Entry.delete_all
User.delete_all
Project.delete_all
Joiner.delete_all




entry_one = Entry.create({
    user_id: 3,
    category: "dialogue",
    content: "Ben: Hello World"
    })


user_one = User.create({
    user_name: "Test",
    password: "password123"
    })

project_one = Project.create({
    user_id: 3,
    title: "Code School",
    logline: "Code School: Episode 1"
    })

joiner_one = Joiner.create({
   	project_id: 3,
   	entry_id: 3,
   	position: 1,
   	rating: 5
    })




