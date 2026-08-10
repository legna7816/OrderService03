# 베이스 이미지 지정
FROM eclipse-temurin:25-jdk

# 개발 컴퓨터에서 실행된 컨테이너 안의 리눅스 시스템에 jar 파일을 복사함
COPY ./target/OrderService03-0.0.1-SNAPSHOT.jar ./OrderService03.jar

# 작업 디렉토리를 설정함
WORKDIR /app

# 컨테이너가 8081번 포트 번호를 개방해 놓음
# 하지만 내부적으로 주석처리됨
# docs의 개념과 비슷함
EXPOSE 8081

# 컨테이너에서 실행할 명령어를 설정함
CMD ["java", "-jar", app.jar"]