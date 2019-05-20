class StoriesController < ApplicationController
    def index
        @stories = Story.all
    end

def show
    @story = Story.find(params[:id])
    end

def destroy
        @story = Story.find(params[:id])
        @story.destroy
    
        redirect_to stories_path
    end

    def new
        @story = Story.new
    end

    def create
        @Story = Story.create(story_params)
        #redirect_to stories_path
        redirect_to stories_path(@story)
    
    end

    def edit
        @story = Story.find(params[:id])
    end

    def update
        @story = Story.find(params[:id])
        @story.update(story_params)
        #redirect_to stories_path
        redirect_to story_path(@story)
    end

    def story_params
        params.require(:story).permit(:blog)
    end
end
