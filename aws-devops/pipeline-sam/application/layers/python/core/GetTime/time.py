from datetime import datetime

class TimeUtil:
    def __init__(self) -> None:
        pass

    def get_time(self):
        current_time = datetime.now()
        #current_time = current_time.strftime("%H:%M:%S")
        return current_time