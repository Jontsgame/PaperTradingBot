FROM freqtradeorg/freqtrade:stable
COPY config.json /freqtrade/user_data/config.json
COPY SampleStrategy.py /freqtrade/user_data/strategies/SampleStrategy.py
CMD [ "trade", "--config", "/freqtrade/user_data/config.json", "--strategy", "SampleStrategy", "--dry-run" ]
