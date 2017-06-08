module HandRaiseApiConnector
  def self.connection
    credentials = {
      :username => ENV.fetch('HAND_RAISE_SOURCE_APP'),
      :password => ENV.fetch('HAND_RAISE_API_KEY')
    }

    options = {
      basic_auth: credentials
    }
  end

  def self.get_by_filter(filter)
    HTTParty.get(
      "#{ENV.fetch('HAND_RAISE_URL')}?filter=#{filter_mapper(filter)}",
      connection
    )
  end

  def self.get_by_id(id)
    HTTParty.get(
      "#{ENV.fetch('HAND_RAISE_URL')}/#{id}",
      connection
    )
  end

  def self.submit_resolution(id, status, ta, resolution)
    params = {
      'hand_raise[resolution]' => resolution,
      'hand_raise[status]' => status,
      'hand_raise[ta_name]' => ta.full_name,
      'hand_raise[ta_email]' => ta.email
    }

    HTTParty.patch(
      "#{ENV.fetch('HAND_RAISE_URL')}/#{id}",
      connection.merge({ query: params })
    )
  end

  def self.filter_mapper(filter)
    case filter
    when 'pending'     then 0
    when 'in_progress' then 1
    when 'resolved'    then 2
    when 'unresolved'  then 3
    else
      0
    end
  end
end
