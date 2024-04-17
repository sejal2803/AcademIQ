categories = Category.create([
  { name: 'Backend Tech' },
  { name: 'Frontend Tech' }
])

puts 'Categories created successfully.'

# Students
students = User.create([
  { email: 'student1@example.com', password: 'password', name: 'Alice Johnson' },
  { email: 'student2@example.com', password: 'password', name: 'Bob Williams' }
])

puts 'Students created successfully.'

# Courses (linked to categories and instructors)
courses = Course.create([
  { title: 'Introduction to Programming', description: 'Learn the basics of programming.', category: categories.first, enrollment_status: 'open' },
  { title: 'Business Management Fundamentals', description: 'Essential principles of business management.', category: categories.second, enrollment_status: 'open' }
])

puts 'Courses created successfully.'

# Enrollments (linking students to courses)
Enrollment.create([
  { user_id: students.first.id, course_id: courses.first.id, enrollment_date: Date.today, completion_status: 'in progress' },
  { user_id: students.second.id, course_id: courses.second.id, enrollment_date: Date.today, completion_status: 'not started' }
])

puts 'Enrollments created successfully.'