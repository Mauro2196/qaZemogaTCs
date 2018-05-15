User.create!([
  {email: "mauro@mail.com", encrypted_password: "$2a$11$qOYyxJE1YFMtFL88Kk2VceYy7rSoXOQS93lJQRjB20b9.fucJBUD2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-05-13 18:47:21", last_sign_in_at: "2018-05-13 18:47:21", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Step.create!([
  {user_id: 1, test_id: 1, step: "dsdsd", expected_step: "ddsdsds"},
  {user_id: 1, test_id: 1, step: "sddsdsd", expected_step: nil},
  {user_id: 1, test_id: 1, step: "asdad", expected_step: nil},
  {user_id: 1, test_id: 1, step: "asdad", expected_step: nil},
  {user_id: 1, test_id: 1, step: "sdfsf", expected_step: nil},
  {user_id: 1, test_id: 1, step: "sdsdsdsd", expected_step: nil},
  {user_id: 1, test_id: 1, step: "hola", expected_step: nil},
  {user_id: 1, test_id: 1, step: "sddsds", expected_step: nil},
  {user_id: 1, test_id: 1, step: "sddsds", expected_step: nil},
  {user_id: 1, test_id: 1, step: "ssd", expected_step: nil},
  {user_id: 1, test_id: 1, step: "sdfsdfsf", expected_step: "sdfsdfsdfdsf"},
  {user_id: 1, test_id: 1, step: "fffd", expected_step: "sdds"},
  {user_id: 1, test_id: 1, step: "esfsd", expected_step: "dsf"}
])
Test.create!([
  {user_id: 1, title: "Test 1", type_test: "functional", priority: "medium", sprint: "Sprint 1", Status: "un-tested", preconditions: "dsdfsdfsdfdsfdsfsdf"}
])
