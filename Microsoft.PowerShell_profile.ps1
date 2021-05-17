set-alias -name eth -value get-netadapter
function sudo {Start-Process wt -Verb runAs}
function lab {cd "C:\Users\azraf\Codes"}
function gitlab {cd "C:\Users\azraf\Codes\Flutter\Github"}
function bitlab {cd "C:\Users\azraf\Codes\Flutter\BitBucket"}
#Flutter Run Device
function runC {flutter run -d chrome}

function Print-Text {
    param(
      	[String] $Text
    )
    
    Write-Output $Text
}

function pedit {
	notepad++.exe $PROFILE
	}

#*****************Git_Functions**************
function gitme {
	git init
	git add .
	git commit
	git log --oneline
	}
	
#Git-New-Commit and Push
function git-new-commit {
    param(
      	[String] $Text
    )
    
	git add .
	git commit -m $Text
	git push -u
	git log --oneline

}

#Git-New-Tag and Push
function git-tag {
    param(
      	[String] $Version,
		[String] $Text
    )
	git tag -a v$Version -m $Text
	git show v$Version
	git push origin --tags
	git log --oneline

}

#!/Create Flutter project in Flutter_App Github Directory and open it to VSCODE
function flt-git {
    param(
      	[String] $Text
    )
    
	cd "C:\Users\azraf\Codes\Flutter\Github"
    flutter create $Text
	cd $Text
	git init
	git add .
	git commit -m "First Commit"
	git log --oneline
	cd ..
	code $Text
	cd $Text
}
	
#!/Clone an Empty Repo in Flutter_App BitBucket Directory and Then create a NEW_Flutter_Project in that repo then Push it
function flt-bit-new {
    param(
      	[String] $Text
    )
    
	cd "C:\Users\azraf\Codes\Flutter\BitBucket"
	git clone git@bitbucket.org:monzim/$Text.git
    flutter create $Text
	cd $Text
	git add .
	git commit -m "First Commit"
	git branch -M main
	git push -u
	git log --oneline
	cd ..
	code $Text
	cd $Text
}

#!/Clone an existing Project in Flutter_App BitBucket Directory and Show Git_Logs
function flt-bit {
    param(
      	[String] $Text
    )
    
	cd "C:\Users\azraf\Codes\Flutter\BitBucket"
	git clone git@bitbucket.org:monzim/$Text.git
	code $Text
	cd $Text
	git log --oneline
}

#**********Flutter*******{
#!/Create Flutter project in Flutter_App Directory and open it to VSCODE
function flt-new {
    param(
      	[String] $Text
    )
    
	cd "C:\Users\azraf\Codes\Flutter"
    flutter create $Text
	code $Text
	cd $Text
}

function flt-new-test {
    param(
      	[String] $Text
    )
    
	cd "C:\Users\azraf\Codes\Flutter\Test"
    flutter create $Text
	code $Text
	cd $Text
}
#-------------................

#AutoProgram_Social
function social {
	brave
	signal
	Telegram
	}
	
