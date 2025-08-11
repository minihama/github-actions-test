## Dockerfile 을 이용한 패키지 구성
  1. node/example/Dockerfile 생성 (완료)
  2. .github/workflows/node-docker.yml 파일 생성 (완료)
  3. 도커파일의 이미지 패키지 생성 구문 (테스트)
  4. 기존 테스트 하던 ci.yml은 깃허브 액션에서 disable 처리 (완료)
  5. context에러 수정 (완료)
  6. Dockerfile 에러 수정 (테스트)
  7. package.json 파일 추가 (테스트)

## 깃허브 러너를 사용자 호트팅에 설치(v0.0.17)
  1. 깃허브 웹에서 러너 설치 페이지 확인 (완료)
  2. 호스트 서버에 깃허브 러너 설치 (완료)
  3. runs-on: self-hosted 을 설정 해서 접속 테스트 (완료)

## 시크릿 테스트 (.github/workflows/ci.yml)
  1. 시크릿을 사용한 Actions 출력 테스트 (완료)(v0.0.14)
  2. 시크릿을 사용하여 외부 서버 접속 테스트 (완료)(v0.0.16)

## README.md 파일 생성 전까지 구성 했던 내역 (v0.0.13)
  1. 간단한 CI 구성하여 Actinos 구동 테스트 (완료)
  2. 버전 자동 생성을 위한 VERSION 파일을 이용한 버전 업데이트 테스트 (완료)
  3. 테그와 릴리즈 생성을 위한 Actions 설정 테스트 (완료)
  4. 위에서 구성한 CI 동작 후에 버전 및 릴리스 동작이 되도록 테스트 (완료)
