ActiveRecord::Base.logger = ActiveRecordProfiler::Logger.new(ActiveRecord::Base.logger)
ActiveRecordProfiler::LogSubscriber.attach_to :active_record unless Rails.env.test?
ActiveRecordProfiler.stats_flush_period = 1.minute
