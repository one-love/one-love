from datetime import datetime


class CallbackModule(object):
    """
    This callback module tells you how long your plays ran for.
    """

    def __init__(self):
        self.start_time = datetime.now()
        print "Timer plugin is active."

    def days_hours_minutes_seconds(self, timedelta):
        self.minutes = (timedelta.seconds // 60) % 60
        self.r_seconds = timedelta.seconds - (self.minutes * 60)
        return \
            timedelta.days, \
            timedelta.seconds // 3600, \
            self.minutes, \
            self.r_seconds

    def playbook_on_stats(self, stats):
        self.end_time = datetime.now()
        self.timedelta = self.end_time - self.start_time
        print "Playbook run took %s days, %s hours, %s minutes, %s seconds" % \
            (self.days_hours_minutes_seconds(self.timedelta))
