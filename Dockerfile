FROM freqtradeorg/freqtrade:stable

# Kopiere nur die Config in den Standard-Pfad
COPY config.json /freqtrade/user_data/config.json

# Standard-Startbefehl mit der eingebauten SampleStrategy
CMD [ "trade", "--config", "/freqtrade/user_data/config.json", "--strategy", "SampleStrategy", "--dry-run" ]
