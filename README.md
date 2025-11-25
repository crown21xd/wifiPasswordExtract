# Wi-Fi Password Extractor
Ensure you are running this script responsibly and with permission. Accessing networks without authorization is illegal and unethical.
This is a simple but fast batch Wi-Fi password extractor.
Cloning this and running it on a teacher's or professor's laptop to steal school or department Wi-Fi passwords will get you in trouble,
Dont do it.
If it cannot be prevented, it's up to you.👍👍👍

## Features

- Extracts the Wi-Fi passwords of all networks the device has connected to.
- Outputs the passwords in a clear, readable format.
- Uses UTF-8 encoding for handling special characters.

## Usage

1. Download the script and save it as `passwordExtractor.bat`.
2. Double-click the script or run it from the Command Prompt.
3. The extracted Wi-Fi passwords will be saved in `wifiPassword.txt`.
3. Auto Delete after taking wifi password can be Execute by running `directoryAutoDelete.bat`

## Intruction

## Instructions

1. To use the Wi-Fi Password Extractor, simply copy and run the following commands in your Command Prompt:

```bash

git clone https://github.com/crown21xd/wifiPasswordExtract.git
cd wifiPasswordExtract || { echo "Directory not found! Exiting."; exit 1; }
passwordExtractor.bat
sleep 3000
notepad wifiPassword.txt
cd ..
exit


```

2. then open the folder and search for the `wifiPassword.txt`.

3. After taking the Password you needed run `directoryAutoDelete.bat` to clear all

