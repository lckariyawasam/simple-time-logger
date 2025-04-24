import time
from datetime import datetime

# Log the current time, once every 5 seconds
for _ in range(20):
    print(f"Current time: {datetime.now()}")
    time.sleep(5)
