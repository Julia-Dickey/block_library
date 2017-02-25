class Event < ApplicationRecord

  def as_json(options = {}){
    :id => self.id,
    :title => self.name,
    :start => self.start_time,
    :end => self.end_time,
    :description => self.description,
    :allDay => self.allDay,
    }
  end

  default_scope {order('start ASC')}

end
