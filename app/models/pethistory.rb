class Pethistory < ApplicationRecord
  belongs_to :pet

  enum state: %i[ control-sano enfermo accidentado cirugía post-operatorio]

end
