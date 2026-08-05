resource "single_choice_question" "untitled-question-1" {
  answer      = "Yes"
  distractors = ["No"]
  question    = "Are you able to see this quiz?"
}

resource "quiz" "hrushi-quiz-1" {
  questions = [resource.single_choice_question.untitled-question-1]
}
