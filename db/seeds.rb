# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.destroy_all
Student.destroy_all
Subject.destroy_all
StudentCourse.destroy_all
Course.destroy_all
Content.destroy_all



i1 = Instructor.create(name: "Bob", username: "B", password_digest: "abc")
i2 = Instructor.create(name: "Brand", username: "D", password_digest: "123")
i3 = Instructor.create(name: "Jess", username: "J", password_digest: "890")

st1 = Student.create(name: "Alan", username: "A", password_digest: "qwe")
st2 = Student.create(name: "Jeremy", username: "J", password_digest: "567")
st3 = Student.create(name: "Nolan", username: "N", password_digest: "456")

s1 = Subject.create(name: "Math", instructor_id: i1.id )
s2 = Subject.create(name: "Science", instructor_id: i2.id)

c1 = Course.create(name: "Algebra", level:1, subject_id: s1.id)
c2 = Course.create(name: "Chemistry", level:1, subject_id: s2.id)
c3 = Course.create(name: "Algebra", level:2, subject_id: s1.id)
c4 = Course.create(name: "Biology", level:1, subject_id: s2.id)

co1 = Content.create(instructor_id: i1.id, course_id: c1.id, content_type: "https://www.youtube.com/watch?v=Z4LUfVfGfAI&ab_channel=CoachingNoCodeApps", material: "video-file", likes: 8)
co2 = Content.create(instructor_id: i2.id, course_id: c2.id, content_type: "https://www.youtube.com/watch?v=3sjMRS1gJys&ab_channel=StephenGrider", material: "video-file", likes: 4)
co2 = Content.create(instructor_id: i3.id, course_id: c4.id, content_type: "https://www.youtube.com/watch?v=oJ5s2hs_cKk&ab_channel=AaronJack", material: "video-file", likes: 25)


sc1 = StudentCourse.create(course_id: c1.id, student_id: st1.id, IsPassed: false)
sc2 = StudentCourse.create(course_id: c2.id, student_id: st2.id, IsPassed: false)
sc3 = StudentCourse.create(course_id: c3.id, student_id: st3.id, IsPassed: false)
