# frozen_string_literal: true

Rack::MiniProfiler.config.collapse_results = false
Rack::MiniProfiler.config.show_total_sql_count = true
Rack::MiniProfiler.config.skip_schema_queries = true
Rack::MiniProfiler.config.position = 'bottom-left'
