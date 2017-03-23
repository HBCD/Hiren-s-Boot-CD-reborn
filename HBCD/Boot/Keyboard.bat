@echo off
set keyboard=US
REM to change keyboard settings modify the above line SET KEYBOARD= with your language
REM ------------
REM Mini Xp/DOS Support
REM ------------
REM BE - Belgium - AZERTY
REM BG - Bulgarian
REM BP - Bulgarian Phonetic
REM BR - Brazil Portuguese
REM BX - Brazil Extended - Portuguese
REM DK - Denmark - Daenish
REM FR - Francais - Cavier AZERTY
REM GR - German - Germany Austria - 129
REM GS - German - Switzerland Luxembourg - 150G-1
REM HE - Hebrew
REM IT - Italy - Tastiera italiana
REM LA - Latin American - Espanolo
REM NL - Netherlands - Dutch
REM NO - Norvegian - Norske
REM PL - Polish - Polska klawiatura
REM PO - Portugal - Portuguese
REM RU - Russia - Russian
REM SF - Swiss French
REM SG - Swiss German - Schweizer deutsches
REM SL - Slovenian
REM SP - Spanish
REM SU - Suomi - Finnish
REM SV - Swedish
REM UK - United Kingdom
REM US - United States (Default)
REM ------------
REM Mini Xp only
REM ------------
REM AR - Arabic
REM DV - US Dvorak
REM HU - Hungarian
REM IS - Icelandic
REM SK - Slovak
REM TF - Turkish F
REM TQ - Turkish Q

IF %1i==i start notepad.exe Keyboard.bat
