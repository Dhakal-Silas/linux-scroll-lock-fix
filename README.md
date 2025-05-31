# linux-scroll-lock-fix
---
#### I faced a lot of issue while activating scroll lock in ubuntu 22.04 wayland. I was sick of it and researched for hours and found the solution. Hope it helps if you happend to need it. 
---
##### What it does?
*It just opens the required directory "/sys/class/leds" where all your keyboards leds(caps,nums,..etc) status is set according to input device that has been connected and toggles the state of scroll lock by selecting appropriate device*

---
#### Steps to activate
1. Make sure your script file is executable: 
    - open terminal and write follwoing command in terminal.
    - `chmod +x /path/to/your/script.sh`
1. Open Settings → Keyboard → Keyboard Shortcuts
2. Scroll down and click "View and Customize Shortcuts"
3. Click "Custom Shortcuts" at the bottom
4. Click the "+" button to add a new shortcut
5. Fill in:

    - Name: "Toggle Scroll Lock LED"
    - Command: /path/to/your/script.sh (full path to your script file)
    - Shortcut: Press (Your Desired key).
    - Save

# 🏆 Thanks.
