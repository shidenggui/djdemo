FROM python
COPY . /code
WORKDIR /code
RUN pip install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
