module Echo
  def echo(config)
    @config = config
    @config.each_line do |line|
       puts line
    end
  end
end
