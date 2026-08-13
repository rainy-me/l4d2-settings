## 설치

1. [링크](https://github.com/doitsujin/dxvk/releases)에서 dxvk 다운로드
2. x32 폴더의 d3d9.dll을 left4dead2.exe 옆에 복사
3. -vulkan 실행 옵션이 없는지 확인

## 옵션

DXVK 저장소에서 dxvk.conf를 다운로드하여 "\Left 4 Dead 2" 폴더의 left4dead2.exe 옆에 넣습니다.
기본적으로 dxvk.conf의 모든 옵션은 # 기호로 주석 처리되어 있어 비활성 상태입니다.
옵션을 활성화하려면 # 기호를 지워 주석을 해제하면 됩니다.

## 동작 확인

left4dead2.exe 옆에 left4dead2_d3d9.log 파일이 생성되면 정상 동작하는 것입니다.

## 삭제

- left4dead2.exe 옆에 있는 left4dead2_d3d9.log 파일을 삭제합니다.
- left4dead2.exe 옆에 있는 dxvk.conf를 삭제합니다.
