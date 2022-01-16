call conda create --name rasa python=3.8 -y
call activate rasa
call pip install --upgrade pip==20.2
call pip3 install rasa[full]==2.8.9
call conda install -c conda-forge nodejs -y
call npm install
call npm run dev