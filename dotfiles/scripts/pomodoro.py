#!/usr/bin/python
import time
import os
import argparse

progress_bar_length = 30
icon = '/home/mat/scripts/pomodoro.png'

parser = argparse.ArgumentParser()
parser.add_argument('-n','--repeat', type=int, help='Loop repeat (times)', required=False)
parser.add_argument('-t','--task_time', type=int, help='Task Interval (minutes)', required=False)
parser.add_argument('-b','--break_time', type=int, help='Break Interval (minutes)', required=False)
args = parser.parse_args()

tasktime = args.task_time if args.task_time is not None else 25 
breaktime = args.break_time if args.break_time is not None else 5
repeat = args.break_time if args.repeat is not None else 4

os.system("notify-send -i {} 'Pomodoro Timer:' 'Starting a pomodoro with \n   - {}min tasks\n   - {}min breaks\n   - {} iterations'".format(icon, tasktime, breaktime, repeat))
print(chr(27) + "[2J") # Clear screen
print("Pomodoro timer settings:\n   - {}\trepetitions\n   - {}\tminute tasks\n   - {}\tminute breaks\n".format(repeat, tasktime, breaktime))

def progress_bar(count, total):
    filled_len = int(round(progress_bar_length * count / float(total)))
    percents = round(100.0 * count / float(total), 1)
    bar = '=' * (progress_bar_length - filled_len) + '-' * filled_len
    return bar, percents

for n in range(repeat):
    t = tasktime * 60
    while t > -1:
        bar, percents = progress_bar(t, tasktime * 60)
        print("WORK: {:02}:{:02}  [{}] ({}/{})  ".format(t//60, t%60, bar, n+1, repeat), end="\r")
        t -= 1
        time.sleep(1)
    os.system("notify-send -i {} 'Pomodoro Timer:' 'Time for a break! You worked for {} min. Session {}/{}'".format(icon, tasktime, n+1, repeat))

    t = breaktime * 60
    while t > -1:
        bar, percents = progress_bar(t, breaktime * 60)
        print("BREAK: {:02}:{:02}  [{}] ({}/{})  ".format(t//60, t%60, bar, n+1, repeat), end="\r")
        t -= 1
        time.sleep(1)
    os.system("notify-send -i {} 'Pomodoro Timer:' 'Go back to work! {} loop(s) remaining'".format(icon, repeat - n - 1))

print("Finished the pomodoro!   ")
os.system("notify-send -i {} 'Pomodoro Timer:' 'The pomodoro is finished!'".format(icon))
