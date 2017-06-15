# Ansible
Jacob's Ansible

## Ansible installation
``` bash
$ brew install ansible
```

## 디렉토리 구성
- group_vars : 공통 변수 모음
- hosts : 호스트 정보들
- playbooks : playbook 파일들 모음
- plugins : ansible-playbook 플로그인
- roles : 일종의 레시피라고 해야 하나..?
- templates : 템플릿들

## Ansible Playbook
#### 자주 사용하는 옵션
```
-i	INVENTORY
-l	SUBSET
-v	verbose
-e  파라미터
```

### 실행 예제
```
$ ansible-playbook playbooks/project/weebapp.yml -i hosts/webapp -l "real" -e "phase=real"
```
- 특정 서버 지정
```
$ ansible-playbook playbooks/project/webapp.yml -i hosts/webapp -l "jacob-web01" -e "phase=real"
```
