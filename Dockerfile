# https://joshuacook.netlify.app/post/streamlit-app-heroku/

FROM python:3.9
EXPOSE 8501
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD streamlit run dashboard.py