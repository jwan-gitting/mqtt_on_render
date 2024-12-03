# Use the official Eclipse Mosquitto image
FROM eclipse-mosquitto:latest

# Add the custom Mosquitto configuration file
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Ensure Mosquitto runs with the correct configuration
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
