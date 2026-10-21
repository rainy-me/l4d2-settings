# L4D2 Settings

Rainy의 Left 4 Dead 2 설정 모음입니다.

## 전제 조건

- Windows 전용입니다.
- `cfg/sourcemod` 폴더의 설정은 로컬 서버에 SourceMod와 해당 플러그인을 설치한 경우에만 사용됩니다.

## 설정 파일 적용 방법

> [!WARNING]
> 저의 게임 환경과 똑같이 설정할 사람만 실행하세요. 기존 설정을 백업 없이 지우고 덮어씁니다.
>
> - 삭제: 게임의 `left4dead2\ems`, `left4dead2\downloads` 폴더
> - 덮어쓰기: `left4dead2\cfg`(`autoexec.cfg`, `binds.cfg` 등), `left4dead2\neko`, `motd.txt`, `host.txt`, `materials\vgui\logos`의 스프레이
>
> 기존 설정을 남기려면 위 파일과 폴더를 먼저 백업하세요.

`설정_적용.cmd`를 실행하면 자동으로 설정 파일이 적용됩니다.

- 게임 경로는 Steam 라이브러리에서 자동으로 찾습니다.
- 자동으로 찾지 못하면 `left4dead2.exe`가 있는 폴더 경로를 직접 입력하세요.

## 실행 옵션 설정 방법

Steam 라이브러리에서 Left 4 Dead 2를 우클릭 → 속성 → 일반 → 실행 옵션에 `실행 옵션.txt` 내용을 붙여넣습니다.

> [!WARNING]
> 공방에 접속하려면 `-insecure`를 `--insecure`로 변경합니다.

## Rainy의 저장소

- [l4d2-server](https://github.com/rainy-me/l4d2-server): Left 4 Dead 2 데디케이티드 서버 구성 모음
- [l4d2-settings](https://github.com/rainy-me/l4d2-settings): Left 4 Dead 2 설정 모음
- [l4d2-sourcemod](https://github.com/rainy-me/l4d2-sourcemod): Left 4 Dead 2 SourceMod 구성 모음
