FROM python:3
WORKDIR /user/rayushkasud/desktop
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8501
CMD streamlit run HelloWorld.py
# streamlit-specific commands for config
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
RUN mkdir -p /root/.streamlit
RUN bash -c 'echo -e "\
[general]\n\
email = \"\"\n\
" > /root/.streamlit/credentials.toml'

RUN bash -c 'echo -e "\
[server]\n\
enableCORS = false\n\
" > /root/.streamlit/config.toml'
