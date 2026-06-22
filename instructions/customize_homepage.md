# Customize Your Web Server

> **Note:** The web server may take a minute to start. If the **Service** tab shows "Please wait", give it 30-60 seconds and it will load automatically.


Nginx serves files from `/usr/share/nginx/html/`. The default homepage is `index.html`. You will edit this file to display a custom message.

## Step 1 — Navigate to the web directory

```bash
cd /usr/share/nginx/html
```

## Step 2 — Open the file in vim

```bash
vi index.html
```

## Step 3 — Enter edit mode

Press `i` to enter **Insert mode**. You will see `-- INSERT --` at the bottom of the screen.

## Step 4 — Add your custom message

Go to the top of the file and add this line:

```
Hello from my web server!
```

## Step 5 — Save and exit

1. Press `Esc` to exit Insert mode
2. Type `:wq` and press `Enter` to save and quit

## Step 6 — Verify the change

```bash
cat index.html
```

You should see `Hello from my web server!` in the output. Refresh the **Web Server** tab to see it in the browser.

<instruqt-task id="edit_homepage"></instruqt-task>

## Troubleshooting

**vim not found?**
```bash
apt-get install -y vim
```

**Can't find the file?**
```bash
ls /usr/share/nginx/html
```

**Changes not showing in browser?**
- Press `Ctrl+Shift+R` to force refresh the Web Server tab
