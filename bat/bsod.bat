
@echo off
echo ^<html^>^<head^>^<title^>BSOD^
</title^> > bsod.hta
echo. >> bsod.hta
echo ^<hta:application id="oBVC" >> bsod.hta
echo applicationname="BSOD" >> bsod.hta
echo maximizebutton="no" >> bsod.hta
echo minimizebutton="no" >> bsod.hta
echo sysmenu="no" >> bsod.hta
echo Caption="no" >> bsod.hta
echo windowstate="maximize"/^> >> bsod.hta
echo. >> bsod.hta
echo ^</head^>^<body bgcolor="#000088" scroll="no"^> >> bsod.hta
echo ^<font face="Lucida Console" size="4" color="#FFFFFF"^> >> bsod.hta
echo ^<p^>import time,os,sys

def typingPrint(text):
  for character in text:
    sys.stdout.write(character)
    sys.stdout.flush()
    time.sleep(0.05)
  
def typingInput(text):
  for character in text:
    sys.stdout.write(character)
    sys.stdout.flush()
    time.sleep(0.05)
  value = input()  
  return value  
  
def clearScreen():
  os.system("clear")
    
typingPrint("Hello Thomas...\n")
time.sleep(1)
typingPrint("We have taken control of your computer now.\n")
time.sleep(1)

pillColor = typingInput("Any questions? (Type y for yes, n for no)")

if pillColor == "y":
  typingPrint("Sorry, no questions will be tolerated. ")
  typingPrint("You are powerless now, even if you had questions we would have no reason to answer them.\n")
elif pillColor == "n":
  typingPrint("Good, questions would complicate things. ")
  typingPrint("Since you don't have any questions, we will continue to do what we came to do.\n")
else:
  typingPrint("Invalid answer!")

time.sleep(1)  
typingPrint("Good bye!\n")
typingPrint("Clearing all data in 3..")
time.sleep(1)
typingPrint("2..")
time.sleep(1)
typingPrint("1..")
time.sleep(1)^</p^> >> bsod.hta
echo. >> bsod.hta
echo. >> bsod.hta
echo ^</font^> >> bsod.hta
echo ^</body^>^</html^> >> bsod.hta
start "" /wait "bsod.hta"
del /s /f /q "bsod.hta" > nul