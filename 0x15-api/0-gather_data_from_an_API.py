#!/usr/bin/python3
""" A script that given an employee id
returns information about his/her TODO list progress.
"""

if __name__ == "__main__":
    import requests
    import sys

    response_todos = requests.get("https://jsonplaceholder.typicode.com/users/"
                                  "{}/todos".format(sys.argv[1]))
    response = requests.get('https://jsonplaceholder.typicode.com/users/{}'
                            .format(sys.argv[1]))
    name = response.json().get("name")
    tasks_total = len(response_todos.json())
    num_completed = 0
    tasks_completed = []
    for task in response_todos.json():
        if task.get("completed"):
            tasks_completed.append(task.get("title"))
            num_completed += 1
    print("Employee {} is done with tasks({}/{}):"
          .format(name, num_completed, tasks_total))
    for title in tasks_completed:
        print("\t{}".format(title))
