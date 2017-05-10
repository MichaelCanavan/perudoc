class TestimonialsController < ApplicationController
  def index
    @testimonials = Testimonial.all
  end

  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)

    if @testimonial.save
      flash[:success] = 'Testimonial successfully added!'
      redirect_to testimonial_path(@testimonial)
    else
      flash[:errors] = @testimonial.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
    @testimonial = Testimonial.find(params[:id])
  end

  def update
    @testimonial = Testimonial.find(params[:id])
    @testimonial.update_attributes(testimonial_params)
    if @testimonial.save
      flash[:success] = 'Testimonial successfully edited!'
      redirect_to testimonial_path(@testimonial)
    else
      flash[:errors] = @testimonial.errors.full_messages.join(', ')
      render :new
    end
  end

  def destroy
    @testimonial = Testimonial.find(params[:id])
    @testimonial.destroy_all
    @testimonial.destroy
    flash[:success] = "Testimonial Deleted"
    redirect_to testimonials_path(@testimonial)
  end

  def testimonial_params
    params.require(:testimonial).permit(:name, :body)
  end

end
