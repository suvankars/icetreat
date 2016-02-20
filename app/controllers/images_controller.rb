class ImagesController < ApplicationController

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    respond_to do |wants|
      wants.html { redirect_to request.referer, :notice => t('Want to remove this image?')}
      wants.json { render :status => 'complete' }
    end
  end

end
