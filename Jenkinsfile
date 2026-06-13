pipeline {
agent any

```
stages {

    stage('Checkout') {
        steps {
            git 'https://github.com/shreeesankpal/DevOpsMiniPro.git'
        }
    }

    stage('Build') {
        steps {
            bat '"C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\MSBuild\\Current\\Bin\\MSBuild.exe" SourceCode\\onlineplantsell.sln'
        }
    }

    stage('Deploy') {
        steps {
            bat 'if not exist C:\\Deploy\\OnlinePlantSell mkdir C:\\Deploy\\OnlinePlantSell'
            bat 'xcopy /E /Y SourceCode\\onlineplantsell\\* C:\\Deploy\\OnlinePlantSell\\'
        }
    }

    stage('Verify') {
        steps {
            bat 'dir C:\\Deploy\\OnlinePlantSell'
        }
    }
}
```

}
