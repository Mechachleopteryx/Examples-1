#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include RandomFunctions.ahk 
#Include AutoCorrect.ahk
;;#Include Gdp_All.ahk

#Include RandomNameGenerator.ahk
;;#Include RandomNameGeneratorForWindows.ahk

;; Instructions. After making changes, save, then
;;run script PrintScreen.ahk in
;;C:\Users\Mechachleopteryx\OneDrive\Desktop\Blank\Examples
;;to put in startup menu, first compile into an executable (.exe)
;;and then place in (startup) folder C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp

;; Blender shortcuts ;; If WinActive("Blender") don't know/remember how to do this
;:*:cd::
;Sleep, 3
;Send, os.chdir()
;Return

;:*:mkdir::
;Sleep, 2
;Send, os.mkdir()
;Return

;;background change;;
#n::  
try if ((pDesktopWallpaper := ComObjCreate("{C2CF3110-460E-4fc1-B9D0-8A1C0C9CC4BD}", "{B92B56A9-8B55-4E14-9A89-0199BBB6F93B}"))) {
	DllCall(NumGet(NumGet(pDesktopWallpaper+0)+16*A_PtrSize), "Ptr", pDesktopWallpaper, "Ptr", 0, "UInt", 0) ; IDesktopWallpaper::AdvanceSlideshow - https://msdn.microsoft.com/en-us/library/windows/desktop/hh706947(v=vs.85).aspx
	ObjRelease(pDesktopWallpaper)
}
return

;; memrise mode ;;
;:*:1::
;Send,1
;Send,{Enter}
;return

;;didn't work

;; vim ;;
::deleteblanks:::g/^\s*$/d

;;sample program;;
;; python3 -c 'import os,sys;os.makedirs(sys.argv[1])' /test2/test_3

;;	::create dirs::python3 -c 'import os,sys;os.makedirs(sys.argv[1]){^q} / {^q} / {^q} {Enter}
;;	This is the alphabet.Swngeden 880the first  letters are abc.

;;:*:alpha::
;;Send, This is the alphabet.
;;Send, ^q
;;Send, The first letters are abc.
;;return

::fixshell::start "" "%PROGRAMFILES%\Git\bin\sh.exe"  --login -i -c "exec julia"

:*:create dirs::
Send, python3 -c "import os,sys;os.makedirs(sys.argv[1])"
Send {Space}
Sleep 1000
Send, ^{q}
Sleep 1000
Send, /
Sleep 1000
Send, ^{q}
Sleep 1000
Send, /
Sleep 1000
Send, ^{q}
Sleep 1000
Send, /
Sleep 500
Send, ^{q}
Sleep 500
Send, {Enter}
return

;; awk ;;
::line#::awk '{print FNR "\t" $0}'
::lineno::awk '{printf("%5d : %s\n", NR, $0)}'

;;  Julia === Desktop

::runagain::include("stats_experiments.jl")

::linuxeg::C:\Users\Mechachleopteryx\AppData\Local\Packages\CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc\LocalState\rootfs\root\projects\examples\fast_neural_style
::toshell::eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

;; Autohotkey Scripts
::ahkey::C:\Users\Mechachleopteryx\OneDrive\Desktop\Blank\Examples

;; Bash shortcuts
::listfilenames::ls -l | awk '{print$9}'
::lsfilenames::ls -l | awk '{print$9}'
::lf::ls -l | awk '{print$9}'
::suod::sudo
::sdo::su -
::eixt::exit
::xit::exit()

::noroot::su notroot

;;Windows shortcuts
::startup::C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp

;;Linux shortcuts
::winhome::/mnt/c/Users/Mechachleopteryx/Projects

::forloop::
Send for i in 1 2 3 4 5;
Send do
Send, {Space}
Send        say "Hello World $i";
Send done
Return


::hellocount::while true; do for i in 1 2 3 4 5; say "Hello $i"; sleep 3; done

::goodbuy::Say "I can see you're having trouble. Good-bye"

::tell me a story::Say "A sower went out to sow some seed: and as he sowed, some fell by the wayside; and it was trodden down, and the fowls of the air devoured it.

 And some fell upon a rock; and as soon as it was sprung up, it withered away, because it lacked moisture.

 And some fell among thorns; and the thorns sprang up with it, and choked it.

 And other fell on good ground, and sprang up, and bare fruit an hundredfold. And when he had said these things, he cried, He that hath ears to hear, let him hear.

 And his disciples asked him, saying, What might this parable be?

  And he said, Unto you it is given to know the mysteries of the kingdom of God: but to others in parables; that seeing they might not see, and hearing they might not understand. Now the parable is this... The seed is the word of God... Those by the wayside are they that hear; then cometh the devil, and taketh away the word out of their hearts, lest they should believe and be saved... They on the rock are they, which, when they hear, receive the word with joy; and these have no root, which for a while believe, and in time of temptation fall away... And that which fell among thorns are they, which, when they have heard, go forth, and are choked with cares and riches and pleasures of this life, and bring no fruit to perfection... But that on the good ground are they, which in an honest and good heart, having heard the word, keep it, and bring forth fruit with patience."

;;  Programming Shortcuts
::Haplo::Haplopraxis
::clonemy::git clone https://github.com/Mechachleopteryx/Haplopraxis

;;  Desktops
::phonehome::Mechachleopteryx@192.168.2.40 ;windows, choco
::myzeta::ssh nateg@192.168.2.57 ;linux lmms computer 1
::mixolydian::ssh mechachleopteryx@192.168.2.81 ;linux lmms computer 2, bash, brew

;;  Laptops
::mymac::ssh mecha@ipaddress ;os/10 shell zsh, brew
::mylaptop::ssh hesiod@ipaddress ;windows
::myoldlaptop::ssh tom@ipaddress ;;; windows 10 Version 1709 
;; Smartphones
::myphone::ssh u0_a330@ipaddress -p 8022 ;linux ubuntu
::myoldphone::ssh u0_a502@ipaddress0 -p 8022 ;linux ubuntu

;; Tablet(s)
::mytablet::ssh u0_a285@ipaddress2 -p 8022


;;#o::	; Win+P hotkey (changed it to o (oh) because win+p handles the projector)
;;
;;FileSelectFile, FilePath, S, %A_Desktop%, Save Screenshot, PNG (*.png)
;;if (ErrorLevel)		; The user pressed Cancel
	return

;;SplitPath, FilePath, FileName,, FileExt, FileNameNoExt
;;if (FileExt != "png")		; Appends the .png file extension if it is not already present
;;	FilePath .= ".png", FileName .= ".png"
;;
;;WinWaitClose, Save Screenshot
;;Sleep, 200
;;
;;pToken := Gdip_Startup()
;;pBitmap := Gdip_BitmapFromScreen("0|0|" A_ScreenWidth "|" A_ScreenHeight)
;pBitmap := Gdip_BitmapFromHWND(WinActive("A"))
;;Gdip_SaveBitmapToFile(pBitmap, FilePath)
;;Gdip_DisposeImage(pBitmap)
;;Gdip_Shutdown(pToken)

;;Clipboard := "example.com/$" FileName

;;return


;;^/:: ;ctrl forward slash
;;run Explorer "C:\Users\tom\Desktop\Screenshots"
;;Return


!z:: ;alt z 
send {PrintScreen}
sleep, 2000
send ^d
Return

;;volume control;;;
^Up:: ;ctrl plus up arrow
sleep, 200
Send {Volume_Up}
Return

^Down:: ;ctrl plus down arrow
sleep, 200
Send {Volume_Down}
Return

::linugist::linguist

::kindastrange::dͭoͪnͥˢ'tͥˢ ᵏyͥᶰoͩu ͦᶠtˢhͭiͬnͣᶰkᵍ
::strat::start
::amonsgt::amongst
::resumee::résumé
::resumees::résumés
::fcuk::fuck
