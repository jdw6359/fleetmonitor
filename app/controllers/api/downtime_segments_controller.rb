class Api::DowntimeSegmentsController < ApplicationController

  def index
    @downtime_segments = DowntimeSegment.all
    render json: @downtime_segments
  end

  def create
    downtime_segment = DowntimeSegment.create(downtime_segment_params)
    if downtime_segment.save
      render json: downtime_segment
    end
  end

  private
  def downtime_segment_params
    params.permit(:device_id, :start_time, :end_time, :bytes_traffic)
  end
end
