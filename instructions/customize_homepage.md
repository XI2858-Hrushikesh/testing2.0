# Customize Your Web Server

> **Note:** The web server may take a minute to start. If the **Service** tab shows "Please wait", give it 30-60 seconds and it will load automatically.

The web page currently has a **red** background. Your task is to change it to **blue**.

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

## Step 4 — Find the background color line

Look for this line:

```
background-color: red;
```

## Step 5 — Change the color

Change it to:

```
background-color: blue;
```

## Step 6 — Save and exit

1. Press `Esc` to exit Insert mode
2. Type `:wq` and press `Enter` to save and quit

## Step 7 — Verify the change

Refresh the **Service** tab — the page background should now be **blue**.

```bash
cat index.html | grep background-color
```

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

**Color not changing in browser?**
- Press `Ctrl+Shift+R` to force refresh the Service tab
