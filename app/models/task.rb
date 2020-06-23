# @author Ricardo Gamarra (r.richard0000@gmail.com)
#
# A task represents a todo item, with a description, and status as a boolean attribute named completed, that can be either true or false.
# @attr [String] name The name of the task
# @attr [Boolean] completed Whether the task is completed or not
# @todo Add support for subtasks
class Task < ApplicationRecord
    validates :name, presence: true, length: { in: 4..64 }
    belongs_to :user
end
