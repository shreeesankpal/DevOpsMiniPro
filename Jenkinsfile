pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                bat '"C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\MSBuild\\Current\\Bin\\MSBuild.exe" "SourceCode\\onlineplantsell.sln"'
            }
        }

        stage('Deploy') {
            steps {
                bat 'if not exist C:\\Deploy\\OnlinePlantSell mkdir C:\\Deploy\\OnlinePlantSell'
                bat 'xcopy /E /I /Y SourceCode\\onlineplantsell\\* C:\\Deploy\\OnlinePlantSell\\'
            }
        }

        stage('Verify') {
            steps {
                bat 'dir C:\\Deploy\\OnlinePlantSell'
            }
        }

        stage('Project URL') {
            steps {
                echo '========================================='
                echo 'ONLINE PLANT SELLING SYSTEM DEPLOYED'
                echo 'Project Link: http://localhost/OnlinePlantSell'
                echo '========================================='
            }
        }
    }

    post {
        success {
            echo 'BUILD SUCCESSFUL'
            echo 'Open Project: http://localhost/OnlinePlantSell'
        }

        failure {
            echo 'BUILD FAILED'
        }
    }
}