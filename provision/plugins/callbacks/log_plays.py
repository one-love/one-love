import json


class CallbackModule(object):
    def __init__(self):
        self.tasks = []

    def log(self, host, category, data):
        if type(data) == dict:
            if 'verbose_override' in data:
                # avoid logging extraneous data from facts
                data = 'omitted'
            elif self.tasks:
                self.tasks[-1].update(data)
                self.tasks[-1]['status'] = category

    def runner_on_failed(self, host, res, ignore_errors=False):
        self.log(host, 'FAILED', res)

    def runner_on_ok(self, host, res):
        self.log(host, 'OK', res)

    def runner_on_skipped(self, host, item=None):
        self.log(host, 'SKIPPED', '...')

    def runner_on_unreachable(self, host, res):
        self.log(host, 'UNREACHABLE', res)

    def runner_on_async_failed(self, host, res, jid):
        self.log(host, 'ASYNC_FAILED', res)

    def playbook_on_import_for_host(self, host, imported_file):
        self.log(host, 'IMPORTED', imported_file)

    def playbook_on_not_import_for_host(self, host, missing_file):
        self.log(host, 'NOTIMPORTED', missing_file)

    def playbook_on_task_start(self, name, is_conditional):
        self.tasks.append({'name': name})

    def playbook_on_stats(self, stats):
        # print(json.dumps(self.tasks, indent=4))
        pass
