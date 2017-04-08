class Message < ApplicationRecord
  after_commit ->(){
    MessageBroadcastJob.perform_now self
  }, on: :create
end
