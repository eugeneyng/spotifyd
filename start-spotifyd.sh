#!/bin/bash

# Wait for system to be ready
sleep 60

# Log that we're starting
echo "$(date): Starting spotifyd in tmux" >> /home/pi/spotifyd/start-spotifyd.log

# Start spotifyd in a tmux session with auto-restart
tmux new-session -d -s spotifyd 'while true; do /home/pi/spotifyd/spotifyd --no-daemon 2>&1 | tee -a /home/pi/spotifyd/spotifyd.log; sleep 5; done'

# Log that tmux session was created
echo "$(date): Tmux session created" >> /home/pi/spotifyd/start-spotifyd.log

