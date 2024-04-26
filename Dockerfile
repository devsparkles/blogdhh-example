# Use the official Ruby image as the base image
FROM ruby:3.2.2

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock from the project directory to the container
COPY Gemfile Gemfile.lock ./

# Install dependencies using Bundler
RUN bundle install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]