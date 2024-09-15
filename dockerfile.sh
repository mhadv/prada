FROM jenkins/jenkins:lts

# Set the user to root to install packages
USER root

# Install any necessary packages (optional)
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Switch back to the jenkins user
USER jenkins

# Expose the port that Jenkins runs on
EXPOSE 8080

# Start Jenkins
CMD ["jenkins"]
