call conda create --name rasaPrueba python=3.8 -y
call activate rasaPrueba
call pip install --upgrade pip==20.2
call pip3 install rasa[full]==2.8.9
call conda install -c conda-forge nodejs -y
call npm install
call npm run dev