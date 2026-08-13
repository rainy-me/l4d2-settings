l4n은 L4D2에 대량의 개선 사항을 가져다주는 클라이언트 패치입니다
l4n은 일부 엔진 버그를 수정할 수 있으며, 그 외 알려진 버그들은 발생 조건이 낮은 등의 이유로 현재 수정 방안이 없습니다
현재 게임 버전 2.2.4.3과의 호환성만 보장하며, 시스템은 win10 이상입니다. 이 요구 사항에 맞지 않는 환경에서는 문제가 발생할 수 있습니다

문제가 발생하면 아래의 문제 가이드를 참고해 보세요
문제를 확정하기 전에 여러 번 테스트하여 평균을 내고, 변인 통제를 통해 객관성을 확보하세요
l4n과 관련된 문제를 발견하면 즉시 제보해 주세요
불명확하거나 무관한 문제는 대응하지 않습니다

이 파일은 버전에 따라 업데이트되며, 모든 기능의 설명이 수록되어 있습니다. 일부 기능은 사용 편의를 위해 l4n 메뉴에 추가됩니다
현재 버전에서는 l4n_patch_team_player_display를 1로 설정해야 l4nsurvivor 아바타가 표시됩니다

[2.41.1] 2026-08-12
수정: l4n_view_punch_scale이 0일 때, 클라이언트 예측으로 인한 시점 흔들림
변경: cl_language를 우선 사용하여 l4ngui의 표시 언어를 결정

[2.41.0]
신규: convar l4n_screen_shake_scale
신규: convar l4n_view_punch_scale
신규: convar l4n_hudmenu_offset_x, l4n_hudmenu_offset_y
수정: survivor_vpk_gen이 생성한 addoninfo가 전부 "(bill)" 접미사가 되는 문제

[2.40.2]
제거: replace_memory_allocator 설정 항목. 현재 이 기능은 dxvk의 메모리 할당을 대체할 수 없어 dxvk와 충돌하기 쉬움

[2.40.1]
변경: l4n_game_usage에 mimalloc의 current commit 추가
수정: +l4n_lookat으로 발동한 애니메이션에서 확률적으로 event가 누락되는 문제
수정: +l4n_lookat 애니메이션 재생 중, 기본 손 뻗기 애니메이션이 발동될 때의 시점 끊김

[2.40.0]
변경: 결함이 있는 l4n_survivor_model_nodecal 제거. 이 버전에서는 데칼을 비활성화하는 더 좋고 세밀한 방식을 제공하며, l4n 메뉴의 엔티티 옵션에서 접근 가능
신규: convar l4n_decal_allow_staticprop
신규: convar l4n_decal_allow_entity
신규: convar l4n_decal_allow_special_infected
신규: convar l4n_decal_allow_survivor
신규: convar l4n_decal_allow_common_infected
수정: launch_options에서 값의 공백 이스케이프 문제

[2.39.0]
신규: 선택 가능한 미(mimalloc) 메모리 할당자. config.vdf 설정으로 활성화하며, 메모리 단편화를 줄일 수 있음
수정: +score에서 커스텀 아바타가 표시되지 않는 문제
수정: 이전 버전에서 발생한 +l4n_lookat 발동 문제


[2.38.0] 2026-08-03
신규: convar l4n_allow_entity_dissolve
신규: convar l4n_scripted_hud_allow
신규: "l4n_scripted_hud_allow_slot" 접두사의 convar 15개
수정: +l4n_lookat의 권총에서의 상태 문제
수정: +l4n_lookat이 extern 애니메이션이 없는 모델에서 loop를 발동시키지 못하는 문제
수정: +l4n_lookat이 loop 애니메이션으로 진입할 때의 연결 문제
변경: l4nsurvivor의 봇 처리 최적화. 모델 로딩이 발생하는 상황을 감소


설치/업데이트:
    설치 패키지 안의 모든 파일을 게임 루트 디렉터리에 복사하여 덮어쓰면 됩니다
    셰이더만 설치하려면 exe 파일 복사를 건너뛰세요
제거:
    게임 디렉터리에서 left4dead.exe와 game_shader_generic_neko.dll을 검색해서 삭제하면 됩니다. steam이 게임을 시작할 때 left4dead.exe를 다시 다운로드합니다
    다른 파일의 삭제는 필수가 아니며, 이 파일들은 게임에서 사용되지 않습니다
면책 조항
    dxvk나 reshade와 유사한 면책 조항으로, 사용 시 위험은 본인이 부담합니다
    현재로서는 그럴 필요가 딱히 없어 보이지만, 이 부분이 걱정된다면 실행 옵션에 "-insecure"를 추가하면 vac이 활성화된 서버에 들어가는 것을 방지할 수 있습니다
    엔터테인먼트 또는 싱글 플레이 방식과 함께 사용할 것을 권장합니다. mod가 비활성화된 서버에서는 일부 민감한 기능이 제한되며, 밸런스에 영향을 주는 목적으로 사용하지 마세요

문제 가이드:
    이 가이드에는 게임 자체 또는 서드파티의 문제도 일부 수록되어 있습니다
    게임 크래시가 반드시 높은 메모리 점유와 관련 있는 것은 아니지만, 크래시가 발생하면 먼저 메모리 점유가 비정상인지 확인해 볼 필요가 있습니다

    게임에는 현재도 많은 결함과 버그가 존재하며, 이 결함들은 비순정 상태로 게임을 할 때 더 쉽게 드러납니다(플러그인이 있고 mod가 설치된 서버에 접속하는 것도 순정이 아닙니다)
    Valve는 현재 이런 버그들을 신경 쓰지 않습니다. 보안 관련 버그가 아닌 한 말이죠
    보안 버그는 게임 회사와 사용자 모두에게 부담해야 할 위험이 큽니다. 게임의 보안 업데이트에 대해서는 이성적인 태도를 가져 주세요
    steam 게임 업데이트로 인한 번거로움을 피하려면, 게임 폴더를 다른 곳으로 옮겨서 사용하세요

    l4n은 게임 크래시로 mdmp가 생성되기 전에 팝업 알림을 추가했습니다
    객관적으로 봐 주세요. 이를 통해 크래시 시 무슨 일이 있었는지 파악하기 쉬워집니다
    코드가 표시된다면, 코드를 관찰하여 같은 문제인지 확인할 수 있습니다

    게임을 심하게 개조했다면(대량의 mod, 대량의 플러그인, dxvk 패치 등) 호환성 문제를 겪기 쉽습니다
    하드웨어 구성, mod, 시스템 버전, 드라이버 버전 등 게임 환경에 영향을 주는 요소들은 다른 사람과 완전히 같지 않을 수 있으므로, 남의 사례를 자신에게 그대로 적용하기에는 적합하지 않습니다
    여기저기 물어봐도 소득이 없을 수 있으니, 기본적인 변인 통제법을 배워 직접 문제를 찾아보는 것이 낫습니다
    이 가이드는 문제 해결의 방향을 제시해 줄 수 있습니다

    렌더링 관련. 대부분 저수준 하드웨어와 연관되어 있어 호환성 문제가 생기기 쉽습니다
        a. 아래 설명에 따라 셰이더 캐시를 삭제해 보세요. 원인 불명의 버그로 인해 메모리와 프레임이 비정상이 될 수 있습니다
        b. 그래픽 드라이버 버전을 바꿔 보세요. 예를 들어 25년이나 24년 버전으로 롤백하고, ddu로 드라이버를 제거한 뒤 인터넷 연결을 끊고 재부팅 후 설치하세요(드라이버는 미리 다운로드해 두어야 합니다)
            그래픽 드라이버 업데이트 로그에 왜 게임 이름이 잔뜩 적혀 있는지 생각해 보세요
            그래픽 드라이버 업데이트는 Vulkan 드라이버의 업데이트를 동반하며, 이와 관련된 dxvk나 ReShade에서 호환성 문제가 발생할 수 있습니다
        c. dxvk 버전을 바꿔 보세요. 2.3 버전을 우선 시도하세요
            dxvk는 d3d9 호출을 vulkan으로 변환합니다. 이런 api는 성능 상한이 높은 수동 기어 같은 것입니다
            dxvk는 버전마다 최적화 전략이 완전히 같지 않아, 다른 구성이나 드라이버 버전에서 호환성 문제가 발생할 수 있습니다
        d. ReShade 비활성화
            ReShade 설치 방식을 확인한 다음 게임 루트 디렉터리로 가세요
                vulkan 방식이라면 ReShade.ini를 백업 후 제거
                dx9 모드라면 d3d9.dll을 백업 후 제거
        e. 폰트 렌더링 최적화 패치 MacType
            폰트 교체는 이 패치의 작은 기능 중 하나일 뿐이며, 일부 사람들은 폰트를 수정하기 위해 이 패치를 사용합니다
            일부 구성에서는 dxvk 화면 끊김을 유발할 수 있습니다
        f. 녹화 도구, 성능 표시기, RTX Remix, 노란 오리(작업 표시줄 도구) 등 화면 렌더링과 관련된 기타 수정 사항
            이런 수정들은 게임 렌더링 파이프라인에 자신의 코드를 삽입하여 호환성 문제를 일으킬 수 있습니다
            이런 수정들을 비활성화하여 문제를 확인해 볼 수 있습니다
            DXVK를 사용 중이라면, 비활성화 방법은 config_template.vdf 안의 환경 변수 예시 매개변수를 참고하세요

    설치된 MOD
        이상하고 자잘한 문제들을 겪고 있다면, 가장 먼저 확인해야 할 요소입니다
        게임 내 충돌 감지와 (추가 콘텐츠) 목록에 의존하지 말고, 아래 항목을 참고하세요
        창작마당에서 서드파티 맵처럼 파일 크기가 큰 것을 구독하면 메모리 비정상 점유 버그가 있는 것으로 보입니다(드문 사례에서 나온 정보)
        gameinfo.txt를 수정해야 하는 mod(예: 추가 무기 오디오)의 확인도 잊지 마세요

    게임을 비순정으로 만드는 기타 수정 사항을 확인하세요. 예: sourcemod 플러그인 플랫폼, addons 디렉터리의 기타 플러그인, xx 패치 등

    실행 옵션을 확인하거나, "left4dead2 no-insecure.bat"으로 게임을 실행해 보세요

    방법이 없다면, 게임 폴더를 백업하고 steam에서 최신 버전 게임을 다시 다운로드하여 순정 환경에서 다시 시작한 뒤, 원하는 수정 사항을 천천히 추가하면서 관찰하세요

    steam 게임 실행 옵션에 "-hide_neko"를 추가하면 l4n을 비활성화할 수 있습니다
    다른 게임 실행 방식을 시도할 때는 실행 옵션을 확인하거나 이전해야 할 수 있습니다. steam 게임 속성의 실행 옵션은 steam을 통해 게임을 실행할 때만 적용되며, bat이나 바로가기로 실행할 때도 마찬가지 원리입니다
    l4n은 현재 HLAE와 호환되지 않습니다
    -dev 실행 옵션을 추가하면 화면 좌측 상단에서 콘솔 출력을 볼 수 있습니다

    어떤 상황에서는 서버/호스트가 누구인지 명확히 구분해야 합니다
        자신이 서버인 전형적인 경우: 로컬 싱글 플레이, 로컬 멀티 플레이(자신이 방장)
        타인이 서버인 전형적인 경우: 공식/서드파티 서버 접속, 친구의 멀티 플레이 방에 입장
        vscript 스크립트는 서버 측에서 실행됩니다. 자신이 호스트가 아닌 경우, 자신이 설치한 이런 유형의 mod는 작동하지 않습니다(AI 강화, Admin System 등)
        sourcemod 플러그인은 서버 측에서 실행됩니다

    고폴리곤 모델에 데칼이 생성될 때의 크래시:
        데칼은 표면에 붙는 효과로, 총알 자국·핏자국·스프레이 등이 모두 데칼로 구현됩니다. 캐릭터 모델은 부상 시 핏자국 데칼이 생성됩니다
        데칼은 생성 시 대상 표면의 메시를 복사하는데, 기본 버퍼 크기가 제한되어 있어 일정 폴리곤 수를 초과하는 메시를 만나면 메모리 오버플로로 크래시가 발생합니다
        모델 제작자는 단일 $bodygroup/$body/$model 안에서 각 재질의 폴리곤 수가 특정 크기(대략 65536)를 넘지 않도록 해야 합니다
        재질에 $nodecal 1을 추가하면 해당 재질 표면에 데칼 생성을 금지할 수 있습니다
        실행 옵션에 -lv를 추가하면 저유혈 모드가 활성화되어 일부 혈흔 데칼 생성이 금지됩니다
        l4n 메뉴에서 데칼을 비활성화하는 세밀한 옵션을 찾을 수 있습니다

    게임 종료 시 확률적으로 크래시
        NVIDIA 610 버전 드라이버와 DXVK의 호환성 문제가 알려져 있습니다
        l4n을 사용하지 않는 경우 크래시 팝업이 없으므로, 게임 루트 디렉터리에 새 mdmp 크래시 파일이 생성되었는지 확인하여 판별할 수 있습니다

    특정 맵 챕터 로딩 시 크래시, 낮은 확률로 로딩에 성공하여 입장 가능:
        예: earlydays 1챕터, deadecho 2챕터
        혈흔 데칼 효과에 영향을 주는 mod를 비활성화하세요. 이런 유형의 mod는 일부 서드파티 맵 챕터와 호환성 문제가 있으며, 구체적인 원인은 불명입니다

    무기를 주운 후 튕김:
        콘솔에 다음이 출력됩니다: Infinite origin/angles from vphysics!
        일반적으로 어떤 무기를 주울 때, 같은 슬롯의 무기가 교체되어 바닥에 떨어지는 과정에서 발생하며, 이 과정에 물리 엔진 계산이 있습니다
        떨어지는 무기의 모델과 관련이 있으며 원인 불명입니다. 튕기는 지점은 서버 측입니다
        무기 mod 교체를 고려하거나, 자신이 호스트가 아닌 형태로 플레이하세요. 예: 서버 접속, 친구가 호스트 하기, 로컬에 서버 배포 등

    맵 입장 후 갑자기 로비로 돌아감:
        오디오 스크립트 수가 너무 많은지 확인하세요. 보통 커뮤니티에서 "오디오 라이브러리"라 부르는 mod를 너무 많이 설치했을 때 발생합니다
        콘솔에 다음이 출력됩니다: Host_Error: CEngineSoundServer::PrecacheSound...overflow

    Too many xx for xx buffer 엔진 오류 팝업:
        단일 프레임에서 갑자기 나타나는 지오메트리 수와 관련이 있으며, 특히 데칼 생성 시 메시가 복사됩니다(데칼 대상 표면의 폴리곤 수가 큰 경우)
        https://developer.valvesoftware.com/wiki/Too_many_indices_for_index_buffer
        l4n 설정 파일(convif.vdf)의 index_buffer_size 또는 vertex_buffer_size를 수정하여 버퍼 크기를 늘릴 수 있습니다
        수정 시 화면이 깨지는(폴리곤 폭발) 위험이 있습니다(원래는 이때 팝업이 떠야 함). 엔진 내부 로직은 32768보다 큰 버퍼 크기를 제대로 처리하지 못하며, 현재 패치는 오류 팝업 발동을 방지하기 위한 것일 뿐입니다

    L4D2는 32비트 프로그램으로, 실제로는 약 3gb의 메모리만 사용할 수 있습니다. 상한에 가까워지면 게임이 점점 불안정해지다가 크래시됩니다
    콘솔 명령 l4n_game_usage 1로 메모리 점유를 모니터링할 수 있습니다(av 항목은 게임의 가용 메모리 크기로 낮을수록 위험, dc는 datacache 점유, ents는 엔티티 수 피크)
    주의: dxvk/dx9와 엔진의 기타 모듈, 게임 클라이언트·서버 엔티티, 엔진 datacache 등은 메모리를 나눠 차지합니다

    텍스처의 대량 메모리 점유:
        엔진이 dx9에 텍스처 데이터를 제출할 때 기본 메모리 관리를 사용하는데, 이때 dx9는 텍스처를 gpu 비디오 메모리에 업로드하면서 cpu 메모리에 사본을 남깁니다. 이로 인해 메모리 점유가 특히 높아집니다(텍스처는 mod에서 가장 용량이 큰 자산). 이 문제를 피하려면 기본 dx9 대신 dxvk를 사용하세요. dxvk는 이런 상황에 특별한 최적화가 있습니다
        dxvk를 사용할 수 없는 경우, 비디오 설정에서 "모델/텍스처 디테일"과 "사용 가능한 페이지 풀 메모리"를 낮음으로 조정하면 게임이 저해상도 텍스처를 로드하여 메모리 점유를 줄입니다


    DXVK 설치:
        1순위:
            dxvk 설치 패키지의 d3d9.dll을 게임 실행 파일 옆에 복사
            -vulkan 실행 옵션이 없는지 확인
        2순위:
            1순위 방법이 실패하지 않는 한 -vulkan 실행 옵션 사용은 권장하지 않습니다
            -vulkan 실행 옵션의 DXVK dll 위치는 bin/dxvk_d3d9.dll이며, 버전이 매우 오래되어 새 버전 dxvk의 dll로 수동 교체할 수 있습니다
            steam이 자동으로 무결성을 검증하여 dxvk_d3d9.dll이 다시 덮어씌워질 수 있습니다
        주의:
            dxvk 설치 패키지의 64비트 dll을 32비트 프로그램에 사용하지 마세요
            dxvk 사용 후 Reshade 설치 시 Vulkan을 선택해야 합니다
            dxvk가 정상 작동하지 않는 경우(전체 화면 모드 이상, 외장 그래픽 미인식 등) dxvk의 설정 파일을 수정해 보세요
            설치한 mod의 텍스처 점유가 높다면, 비디오 메모리가 4gb보다 커야 합니다
        dxvk가 적용되었는지 확인:
            콘솔에서 l4n_env_report 실행
            -vulkan 실행 옵션인 경우, 작업 관리자에서 게임 제목에 vulkan이 붙어 있는지 확인할 수 있습니다
            게임 루트 디렉터리의 left4dead2_d3d9.log를 삭제하고, 게임 실행 시 해당 파일이 생성되는지 확인

    셰이더 캐시:
        l4n의 버전마다 셰이더 기능에 차이가 있어, 설치/업데이트/버전 전환 후 셰이더 캐시 컴파일이 발생할 수 있습니다
        그래픽 드라이버 버전이나 dxvk 버전을 전환할 때(처음 dxvk를 사용할 때 포함) 셰이더 재컴파일이 발생할 수 있습니다(엔진 자체 셰이더 포함)
        셰이더 컴파일 중 프레임 저하, 높은 메모리 점유가 나타날 수 있습니다. 오랜 시간이 지나도 문제가 계속되면 아래 가이드에 따라 셰이더 캐시를 삭제해 보세요
            콘솔에서 l4n_open_shader_cache_dir을 실행하여 셰이더 캐시 디렉터리를 연 뒤 게임을 종료
            550 폴더라면 디렉터리 내 모든 폴더 삭제
            AMD 또는 NVIDIA 폴더라면 — 일부 제조사는 이름이 다를 수 있음 — Cache로 끝나는 모든 폴더를 삭제하는 것이 가장 안전
            열기에 실패하거나 다른 GPU 코어 제조사인 경우, 직접 방법을 검색하세요

    mod 확인 시 주의 사항:
        맵 류 mod는 모델, 재질, cvar, 스크립트 오염 충돌 문제가 있을 수 있습니다. 이런 mod는 캠페인 태그가 있으며, 충돌 감지는 이런 mod를 무시합니다
        오염의 예: London Calling, New York, Go Postal Postal 3
        창작마당에서 구독한 mod의 경우, 엔진은 창작마당의 정보로 addoninfo의 일부 매개변수를 대체합니다
        일부 mod는 버그 때문에 게임 내 mod 관리 목록에 표시되지 않습니다
        버그 mod가 발생하는 가능한 원인: mod가 info를 제공하지 않음; mod 파일명 또는 경로가 너무 길거나 특정 문자가 포함됨
        mod 마운트와 mod 목록 표시는 별개의 로직입니다. 버그 mod도 정상 적용될 수 있으며, 이는 버그 mod가 정상 mod와 파일 충돌을 일으킬 수 있다는 뜻이기도 합니다
        충돌 감지는 mod 목록에 표시되는 mod들 사이에서만 감지하고 알려줍니다. 버그 mod는 잠재적 위험이나 불필요한 혼란을 만들 수 있습니다
        충돌 감지는 addonimage.jpg/addoninfo.txt/sound.cache 등을 감지하지 않는 것으로 알려져 있습니다
        addons 디렉터리 아래 어떤 폴더에 addoninfo.txt가 있으면 그 폴더는 파일 시스템에 마운트됩니다. vpk를 언팩하다가 무심코 이런 폴더를 남겼을 수 있습니다
        위와 같은 여러 이유로, mod 목록과 충돌 감지 결과를 완전히 신뢰할 수는 없습니다
        mod 관리 추천:
            파일 탐색기 사용
            bin\neko\other_tools.7z\vpkshellextensions 폴더(게임 루트 디렉터리 또는 l4n 설치 패키지)를 열어 vpk용 탐색기 플러그인과 설치 튜토리얼을 받으세요
            자세히 창(정보 창)을 열어 info 정보(제작자, 제목, 맵 코드, 커버, 설명 등)를 표시
            info 정보로 정렬, 검색이 가능합니다(mp3, doc처럼 탐색기가 기본 지원하는 파일과 사용법이 같습니다)
            파일을 다른 곳으로 옮기는 방식으로 mod를 비활성화
        더 철저한 충돌 감지:
            콘솔에서 l4n_force_dummy_addoninfo 실행
            게임 내 mod 목록 열기
            충돌 발견 시 콘솔을 열어 어떤 파일들이 충돌했는지 확인
            주의: 충돌 감지는 자산 경로 충돌만 감지합니다. 충돌 감지를 통과했다고 다른 mod와 호환성 문제가 반드시 없다는 뜻은 아닙니다
        실제 마운트된 mod 확인:
            기본적으로 소스 파일 시스템은 자산을 읽을 때 다음 2가지를 따릅니다:
                1. 순위가 1위인 마운트 지점부터 파일을 읽기 시작
                2. 1번을 따르는 상황에서, vpk가 폴더보다 우선순위가 높음
            콘솔에서 소스 파일 시스템의 마운트 지점 확인:
                vpk 확인: show_addon_load_order 실행
                폴더 확인: path 실행

    재질 투명 효과:
        첫 번째 방식은 투명 전환 효과가 가장 좋지만, 정렬 문제로 앞뒤 관계가 뒤엉킬 수 있습니다
        두 번째 방식은 완전 투명과 완전 불투명 두 가지 상태만 있으며, 성능이 가장 좋습니다
        세 번째 방식은 MSAA 안티앨리어싱에 의존하며, 품질은 MSAA 등급에 비례합니다
        MSAA 투명의 구체적인 효과는 하드웨어나 그래픽 인터페이스와 관련이 있을 수 있습니다. 예를 들어 특정 모델의 gpu에서 dx9는 전환 단절이 나타나고, dxvk(2.7.1)는 전환 효과가 더 좋은 디더링 투명이 됩니다
        따라서 명확히 알아둘 점(특히 mod 제작자): 당신이 보는 MSAA 투명 효과는 다른 사람이 보는 것과 다를 수 있습니다
        Reshade를 사용하는 경우, 일반적으로 MSAA를 꺼야 합니다

    모델 가장자리 떨림·발광·관통·면 깜빡임:
        월드 좌표 절대값이 매우 큰 구역에서 발생합니다. 예를 들어 공식 맵 c8m3_sewers 시작 안전실에서 겪게 되는데, 콘솔에서 status를 실행하면 x 좌표 값이 1만 정도로 특히 큰 것을 볼 수 있습니다. 이것은 3d 게임이 마주하는 좌표 정밀도 문제로, 맵 제작자는 맵을 만들 때 이런 문제를 피해야 합니다

    동적 광원:
        https://developer.valvesoftware.com/wiki/Light_dynamic
        엔진의 동적 광원 최적화는 그다지 좋지 않아, 일부 복잡한 장면에서 프레임이 급락할 수 있습니다

    datacache(dc):
        기본적으로 엔진의 dc 메모리 상한은 256mb입니다
        dc 상한에 도달하면 오디오 끊김·무음, 프레임 급락, 게임 불안정·크래시 등의 문제가 나타날 수 있습니다
        일부 서드파티 맵은 자체 자산이 커서 256을 바로 채워버립니다. 예: 여명(黎明)이나 체르노빌
        -heapsize 실행 옵션을 추가하여 상한을 수정할 수 있으며, 단위는 kb입니다. 수치 오버플로 버그가 있어 부적절한 수치 크기에서는 문제가 발생할 수 있습니다
        l4n 사용 시 2048MB로 강제 고정됩니다. 이 크기는 일반적으로 다 채우지 못하므로 지나치게 걱정할 필요 없습니다

        // 콘솔에서 "mem_dump" 또는 "cache_print_summary"를 실행하면 dc의 상세 점유와 실제 상한을 볼 수 있으며, 마지막 줄에서 모든 dc 항목의 메모리 점유 총합을 볼 수 있습니다
        // 다음은 "Datacache reports"의 설명입니다:
        //      [WaveData]는 오디오 캐시로, 가득 차면 오래된 오디오 데이터를 자동으로 정리합니다.
        //      현재 l4n 버전은 상한을 512mb로 고정합니다. 너무 높으면 쓸모없는 오디오 데이터가 계속 쌓여 메모리 공간을 잠식·낭비합니다
        //      캐릭터 음성, 총소리, 음악 등이 들어 있습니다..

        //      [AnimBlock]은 모델 애니메이션의 캐시입니다
        //      점유가 특히 높다면(예: 200mb) 춤 관련 애니메이션 mod를 설치했을 수 있습니다. 이런 mod는 최대 100개 정도의 춤을 포함할 수 있는 것으로 알려져 있고,
        //      춤 하나가 대략 1~2분이라 합치면 메모리 점유가 매우 큽니다. 필요 없을 때는 이런 mod를 비활성화하는 것을 권장합니다
        //      xdReanimsBase를 비활성화하여 모든 애니메이션 mod를 무효화하는 효과를 낼 수도 있습니다

        //      [Modelxxxx]는 모델의 캐시로, 크기는 주로 모델의 폴리곤 수와 관련이 있습니다
        //      현재 맵에서 사용할 모델(생존자, 무기, 차량, 화분, 감염자 등...)을 저장하는 데 사용됩니다
        //      맵 입장 후 콘솔에서 "cache_print"를 실행하면 메모리 점유가 가장 높은 모델을 출력합니다
        //      경로에 survivor나 infected가 있는 것은 캐릭터 모델로, 보통 맨 앞에 옵니다(캐릭터 모델은 용량이 크고 정밀도 요구가 비교적 높습니다)
        //      경로에 w_models 또는 v_models가 있는 것은 무기의 3인칭 또는 1인칭 모델입니다

        // 언급하지 않은 다른 항목들은 중요하지 않습니다

    "no free edicts" 오류 팝업:
        https://developer.valvesoftware.com/wiki/Entity_limit
        게임 내 엔티티 수가 2048에 도달하면 발생합니다. 현재 이 상한을 패치할 유효한 비공식적 수단은 없습니다
        -num_edicts 실행 옵션은 골드 소스 엔진의 실행 옵션으로, 소스에서는 아무 효과가 없습니다
        Valve 공식이 나서지 않는 한, 서드파티가 이 문제를 해결하려면 작업량과 난이도가 매우 큽니다. 엔티티는 클라이언트/서버 로직에서 가장 흔한 객체라, 서드파티는 수많은 지점을 찾아 패치해야 하며, 엔티티는 클라이언트와 서버 사이에 네트워크 동기화가 필요하므로 클라이언트와 서버 모두 함께 패치해야 합니다
        일부 맵은 시작부터 점유가 1700 정도에 달하며, 서버 플러그인이나 vscript 스크립트가 일반적으로 엔티티를 생성하므로 이 문제를 만날 위험이 커집니다

    맵 노출이 너무 어두움:
        일부 gpu 하드웨어(예: Intel의 일부 모델)에서 이런 문제를 겪습니다. video.txt를 수정하여 해결할 수 있습니다
        l4n을 사용한다면 콘솔에서 mat_tonemapping_occlusion_use_stencil 1을 실행하면 됩니다

    모델이 보이지 않음:
        이 경우 콘솔에 다음이 출력됩니다: CUtlLinkedList overflow! (exhausted index range)
        구체적인 원인은 불명입니다

NekoSky용 오버레이 텍스처 제작: https://rafradek.github.io/Mishcatt/
    배경은 순수 검정이어야 하며, RGB888 포맷을 권장합니다. DXT 계열은 선이 있는 일러스트에 적합하지 않습니다
    vtf 파일은 게임 루트 디렉터리의 left4dead2/materials에 넣으세요. 콘솔에서 텍스처 설정 예시: mat_nekosky_overlay_lf "vtf파일명 또는 공백"

===========기본 기능==========
    메인 메뉴(l4n_menu)는 기본적으로 "\"로 표시, "-" 이전 페이지, "+" 다음 페이지
    -heapsize의 512mb 상한을 기본 해제. 이 상한은 소리 끊김·손실, 일부 튕김, 프레임 급락과 관련이 있음
    -heapsize의 크기가 엔진의 datacache 모듈에 온전히 전달되도록 함. 이 모듈의 인터페이스는 uint 바이트 단위(b) 수치를 받는데, 엔진이 호출 전 int로 바이트 수를 계산하여 실제 수치를 제어할 수 없게 됨. 예: 2097152kb는 int 오버플로로 실제로는 1kb가 됨
    플레이어 모델 신장 조정
    폰트 교체
    addoninfo에 문제가 있는 mod에 메타데이터 추가
    생존자 손 모델을 3인칭 모델과 강제로 동기화
    플레이어 모델이 죽을 때 눈을 감음(死亦瞑目)
    클라이언트 예측이 빈 데이터의 애니메이션을 재생하여 튕기는 문제 수정(xdReanimsBase 사용 시 이런 버그를 겪을 수 있음)
    게임 크래시 전 문제 감지와 알림. 크래시 원인을 찾는 데 도움이 됨
    RestrictAddons가 비활성화된 경우 sv_consistency 1의 효과를 무효화
    scheme_overrides
    sequence_event
    (convar/concmd/콘솔 명령) 관련 상세 설명은 아래에 있습니다. ctrl+f로 빠르게 찾으세요

======== ReShade Bridge ========
    ReShade Bridge는 ReShade 필터를 L4D2의 렌더링 파이프라인에 통합할 수 있습니다
    이 기능은 Addon 버전의 ReShade가 필요합니다. ReShade 플러그인 관리에 "제한된 애드온 기능만 제공"이라 표시되면 그 ReShade 버전은 Addon 버전이 아닙니다
    ReShade 플러그인 관리에서 "L4N ReShade Bridge"가 활성화되어 있는지 확인하세요. 해당 항목이 없다면 ReShade.log를 확인하세요
    콘솔에서 "l4n_reshade_draw 1"을 실행하면, 게임이 HUD를 렌더링하기 전에 ReShade 효과를 렌더링할 수 있습니다
    저수준 렌더링과 관련되어 있어 ReShade Bridge는 일부 환경에서 정상 작동하지 않을 수 있습니다. 가능한 요인: dxvk 버전, ReShade 버전, 드라이버 버전, 하드웨어 구성, dxvk 유무, MSAA 안티앨리어싱 유무 등
    d3d9는 MSAA 안티앨리어싱이 활성화된 깊이 버퍼를 읽을 수 없습니다. Generic Depth 플러그인은 이 경우 정상 작동하지 않으니, MSAA 안티앨리어싱을 비활성화하거나 dxvk를 사용하여 ReShade를 vulkan 모드로 실행하는 것을 고려하세요
    ReShade Bridge는 Generic Depth의 설정을 자동으로 고정합니다. 실행 옵션에 "+l4n_reshade_depth_resolve 0"을 추가하면 이 특성을 비활성화할 수 있습니다
    이 기능을 사용하는 경우 알 수 없는 요인들이 있어 메모리 점유 이상이 발생할 수 있습니다. config_template.vdf의 예시 매개변수를 사용해 보세요

======== l4n_survivor ========
    이 기능은 "l4ns" 또는 "확장 생존자 모델"이라고도 부릅니다
    일반 생존자 mod는 8명 생존자의 모델 파일을 교체하는 방식으로 구현되어, 그 8개 파일 안에서만 작업할 수 있습니다
    l4ns는 확장된 모델 파일을 사용하여 플레이어 엔티티가 사용할 모델을 능동적으로 수정합니다. 효과는 플레이어 수나 설치된 호환 mod의 수에 따라 달라집니다
    l4ns는 (아바타/쓰러짐 아이콘/봇 이름)의 교체도 지원합니다. 현재 버전에서는 l4n_patch_team_player_display를 1로 설정해야 적용됩니다
    주의 사항:
        이 기능의 사용은 전통적인 캐릭터 mod의 사용과 충돌합니다. 불필요한 혼란을 피하려면 혼합 사용을 피하세요
        모델은 동적으로 로드되며, 사용하지 않는 캐릭터 모델은 메모리 점유를 해제합니다. 새 플레이어가 들어올 때 끊김이 있을 수 있습니다
        플레이어 엔티티 단위로 처리하면서 몇 가지 문제가 있습니다
            대부분의 비플레이어 엔티티는 클라이언트 입장에서 어느 플레이어와 연관되는지 알 수 없습니다. 예: tumtara 테스트 맵의 캐릭터 모델 전시 엔티티
            플레이어와 시각적으로 연관된 비플레이어 엔티티에 대해, l4n은 일부 상황에 제한적인 추측과 대응을 했습니다. 예: 감전될 수 있는 생존자 사망 엔티티, 1인칭 다리 플러그인이 생성한 엔티티, 쓰러져 기어가기 플러그인이 생성한 엔티티
            멀티 플레이에서 여러 플레이어가 모두 zoey 모델인 상황이 나올 수 있습니다. 엔티티가 사용하는 생존자 모델로 소속 플레이어를 판정해서는 안 됩니다. 그렇게 하면 다시 8명이라는 틀에 갇히게 됩니다
    설치 패키지의 to_l4n_survivor 도구 사용 설명
        일반 캐릭터 mod를 l4n_survivor를 지원하는 mod로 변환하는 데 사용합니다
        8인 팩 사용을 권장합니다. 8인 팩 안의 8명 생존자 캐릭터를 교체하는 vpk를 동시에 선택하여 to_l4n_survivor.exe에 함께 드래그하면 변환이 시작됩니다
        여건이 안 되는 경우, 특정 생존자 캐릭터를 교체하는 vpk 하나로도 변환할 수 있습니다. 이 기능은 현재 실험적입니다
        재질 vpk나 기타 의존성 vpk도 함께 드래그하여 병합할 수 있습니다
        다른 mod를 섞어서 변환하지 않도록 주의하세요. 예를 들어 a 캐릭터로 bill을 교체하는 vpk와 b 캐릭터로 zoey를 교체하는 vpk(이하 유사)를 함께 넣는 것

======== Neko_Engine_Post 셰이더 ======
    "-l4n_use_neko_engine_post" 실행 옵션을 추가하여 사용합니다. l4n이 엔진의 후처리 렌더링을 인계받습니다
    실행 옵션 추가 후 다음 기능을 제공합니다:
    톤 매핑: 화면 밝은 부분이 과노출로 디테일을 너무 많이 잃지 않게 하여, 낡은 엔진이라는 고정관념에서 벗어나게 함
    감마 조정(gamma): 비디오 설정의 밝기 슬라이더와 유사한 작용을 하며, 비독점 전체 화면에서도 적용 가능
    블룸(NekoBloom): 화면 밝은 부분에 더 분위기 있는 느낌을 줌

========다음 기능은 MOD 호환 작업 필요========
    l4nscope, 무기 모델 단위의 커스텀 조준경 효과
    모프 키(형태 키) 시선 추적
    PBR 셰이더(자동 호환 기능 있음)
    NekoToon 셰이더(자동 호환 기능 있음)
    NekoSky 셰이더(자동 호환 기능 있음)
    vpk 오디오 라이브러리와 pcf 파티클의 추가 로딩, manifest 의존 불필요
    모델의 부품 전환과 재질 전환
    애니메이션 엔티티의 발 IK 보정
    새로 추가된 재질 프록시
    l4n_survivor

일부 cvar(convar)의 값은 저장되지 않습니다
l4n을 중단하거나 l4n 버전을 롤백하면 저장된 값이 사라질 수 있습니다. 이를 방지하려면 cvar에 원하는 값을 붙여 autoexec.cfg에 적어 두세요
콘솔에서 "l4n_revert_cvar cvar_name"을 실행하면 지정한 cvar를 기본값으로 되돌릴 수 있으며, 또는 콘솔에 cvar의 이름을 입력하고 실행하여 기본값을 확인할 수 있습니다

이 목록에는 위에서 언급하지 않은 기능도 일부 포함되어 있습니다:
【ConVar】
    l4n_allow_flashlightmuzzleflash 1   1인칭 손전등 총구 화염 허용 여부
    l4n_game_hud_visible 1,             게임 HUD의 표시/숨김 제어;
    l4n_specialinfected_randommodel 0   특수 감염자가 1·2편 모델을 무작위로 사용하는 스위치
    l4nsurvivor 1                       l4nsurvivor 기능 활성화 여부, 매개변수 2면 팀원 모델은 교체하지 않음
    l4nsurvivor_allocation_algorithm 1  l4n_survivor가 자신을 제외한 플레이어에게 모델을 할당하는 알고리즘(0 userid 기준, 1 steamid 기준, 2 userid+난수)
    l4nsurvivor_allow_bot 1             봇의 l4nsurvivor 사용 허용 여부
    l4n_vm_sway 1                       뷰모델 시점 회전 지연 스위치
    l4n_vm_sway_interp 0.1,             뷰모델의 시점 회전에 따른 지연 복귀 시간. 0으로 설정하면 뷰모델의 시점 회전 지연(sway) 효과 비활성화
    l4n_vm_sway_scale 1.6,              뷰모델의 시점 회전에 따른 지연 폭
    l4n_vm_sway_ignore_helpinghand 1    손 뻗기 애니메이션 발동 시 sway 효과 비활성화 여부. 활성화하면 일부 플러그인 애니메이션(예: ADS)에 sway 효과가 없어질 수 있고, 비활성화하면 무기가 고빈도로 떨릴 수 있음
    l4n_vm_offset_y 0,                  전역 뷰모델 위치 오프셋 y
    l4n_vm_offset_z 0,                  전역 뷰모델 위치 오프셋 z
    l4n_vm_offset_x 0;                  전역 뷰모델 위치 오프셋 x
    l4n_menu_offset_x 0,
    l4n_menu_offset_y 0;                l4n_menu 표시 위치 제어
    l4n_menu_font_size 32,              l4n_menu의 폰트 크기
    l4n_commoninfected_noragdoll 0,     0보다 크면 일반 감염자 사망 시 래그돌 효과 비활성화. 더 깔끔한 좀비 처치 경험 제공(-lv 실행 옵션과 함께 사용 필요)
    l4n_mat_colorcorrection 1,          색 보정(컬러 필터) 허용 여부
    l4n_tonemap_scale 1,                hdr의 노출 강도 제어. hdr이 비활성화된 맵은 지원하지 않음
    l4n_survivor_stylized_amibentlight 0, 생존자 엔티티의 스타일화 환경광 사용 스위치
    l4n_survivor_lighting_scale 1,        생존자 엔티티의 조명 배율 제어
    l4n_game_usage 0,                   hud에 엔진 안정성 관련 데이터 표시(datacache, ents는 엔티티 피크 수, av는 게임 프로세스의 가용 메모리)
    l4n_game_usage_pos 32,              l4n_game_usage 표시 위치 제어
    l4n_game_usage_padding 24,          l4n_game_usage의 화면 가장자리로부터의 위치 제어
    l4n_survivor_model_use_nekotoon 0   생존자 모델의 재질을 NekoToon 재질로 자동 변환할지 여부. 수정 후 게임 재시작 필요; 자동 변환 결과에는 버그가 있을 수 있으며 특히 일부 모델의 얼굴; 매개변수 2면 외곽선 비활성화
    l4n_survivor_sequence_strip         생존자 mod의 애니메이션 수를 수정할지 여부. 수정 후 게임 재시작 필요, 자세한 정보는 config_template.vdf 참고
    l4n_prevent_varms_stretching 0      1인칭 손 모델 애니메이션에서 일부 본의 늘어남을 금지할지 여부
    l4n_player_list_show_steam_avatar 1         +l4n_player_list에 steam 플레이어 아바타 표시
    l4n_player_list_vomitjar_icon_clip 0        +l4n_player_list 담즙 아이콘 잘라내기
    l4n_engine_post_allow_local_contrast 1      로컬 대비 사용 허용 여부(-1 음수만, 0 완전 비활성화, 1 양·음수, 2 양수만)
    l4n_engine_post_allow_vomit 1               담즙 시야 흐림 효과 허용 여부
    l4n_survivor_scale 1.0                      생존자 크기의 전역 수정
    l4n_enhanced_material_pxory 1               일부 재질 프록시 강화 여부. 예: EntityRandom이 1인칭과 3인칭을 동기화
    l4n_proxy_entity_random_seed_offset 0.0     EntityRandom의 난수 시드 오프셋
    l4n_force_skyname ""                        스카이박스 재질 덮어쓰기. 매개변수 ""로 복원
    l4n_disable_survivor_bandage 1              생존자 모델의 붕대 파티클 비활성화 여부. 원본 붕대 파티클은 생존자 모델 스케일과 충돌함
    l4n_auto_flush_unused_models 1              사용하지 않는 모델의 캐시 자동 정리 여부. 매개변수 0, 1 또는 2
    l4n_player_identity_render_color 0          플레이어 관련 엔티티의 염색 금지 여부
    l4n_mat_specular 1                          환경 반사 허용 여부. mat_specular에 비해 이 방식이 더 엄격하고 빠름
    l4n_env_cubemap_redirect 0                  활성화 시 env_cubemap의 로딩(예: "c1841_-940_69.hdr.vtf")을 "c1841_-940_69_hdr.pwl.vtf"로 리다이렉트 시도
    l4n_use_nekosky 1                           l4n의 nekosky 셰이더로 하늘을 렌더링할지 여부
    l4n_proxy 1                                 l4n의 재질 프록시 활성화 여부
    l4n_ambient_darkness_limit 0.0              환경광의 어두움 제한
    l4n_lightmap_darkness_limit 0.0             라이트맵의 어두움 제한
    l4n_charactor_model_random_scale 0.0        0이 아니면 캐릭터 모델 무작위 스케일 활성화. 절대값이 스케일 범위
    l4n_pin_viewmodel 0                         viewmodel 엔티티 고정
    l4n_allow_hud_team_player_display 1         HUD에 팀원 상태 표시 허용
    l4n_flashlight_factor 1.0                   손전등 밝기 배율
    l4n_flashlight_r 1.0                        손전등 색상 R 배율
    l4n_flashlight_g 1.0                        손전등 색상 G 배율
    l4n_flashlight_b 1.0                        손전등 색상 B 배율
    l4n_allow_lobby_cheats 0                    Can't use cheats now; please exit to main menu and start your own listen server with "map mapname" so that you could enable cheats.
    l4n_force_dummy_addoninfo 0                 위의 mod 확인 주의 사항 참고
    l4n_patch_team_player_display               HUD 봇 이름과 아바타 표시를 인계받을지 여부. 값이 2면 봇 이름 무시
    l4n_hud_scope_draw_padding_block            HUD 조준경 검은 테두리 채우기
    l4n_patch_hud_scope 1                       저격총 조준경 HUD 렌더링을 인계받을지 여부
    l4n_max_background_bik 5                    로비 배경 영상의 수. 하나만 있고 4번 복사하기 싫으며 공간을 아끼고 싶다면 1로 설정 가능. 무작위 5개로 부족하다면 5보다 큰 수치로 설정 가능
    l4n_to_nekotoon_allow_outline 1             l4n_to_nekotoon으로 nekotoon 변환 시 외곽선 활성화 여부
    l4n_allow_consistency_check 0               비활성화하면 sv_consistency 값과 무관하게 일관성 검사를 건너뜀
    l4n_thirdpersion_crosshair_alpha            정밀 3인칭 조준점 투명도
    l4n_thirdpersion_crosshair_scale            정밀 3인칭 조준점 스케일
    l4n_thirdpersion_crosshair_dynamic          정밀 3인칭 조준점 동적 스케일
    l4n_allow_draw_sprite 1                     Sprite 렌더링 허용 여부. 주로 광원에서 빛살이나 광륜 효과를 모사하는 데 사용. 끄면 일부 챕터의 장치 상태 알림에 영향을 줄 수 있음
    l4n_dlight_muzzleflash 0                    1인칭 총구 화염 광원 활성화 여부. 가능한 값 0(비활성화), 1(소음기 준수), 2(소음기 무시)
    l4n_dlight_muzzleflash_brightness           1인칭 총구 화염 광원 밝기
    l4n_dlight_muzzleflash_distance             1인칭 총구 화염 광원 최대 발광 거리
    l4n_dlight_muzzleflash_prevent_tonemapscale 노출이 밝기에 미치는 영향 억제
    l4n_server_filter 1                         서버 필터
    l4n_thirdperson_fire_sound_fix              3인칭 발사 소리 수정
    l4n_reshade_draw                            hud 전에 reshade 효과를 렌더링할지 여부
    l4n_scripted_hud_allow                      스크립트화 HUD 렌더링 허용 여부
    l4n_scripted_hud_allow_slot[1~15]           스크립트화 HUD의 특정 slot 렌더링 허용 여부. 15개 slot 선택 가능
    l4n_allow_entity_dissolve                   엔티티 소멸(dissolve) 효과 허용 여부
    l4n_decal_allow_staticprop 1                정적 소품 데칼 효과 허용 여부
    l4n_decal_allow_entity 1                    엔티티 데칼 효과 허용 여부
    l4n_decal_allow_special_infected 1          특수 감염자 데칼 효과 허용 여부
    l4n_decal_allow_survivor 1                  생존자 데칼 효과 허용 여부
    l4n_decal_allow_common_infected 1           일반 감염자 데칼 효과 허용 여부
    l4n_hudmenu_offset_x                        Hud 메뉴의 x 위치 오프셋
    l4n_hudmenu_offset_y                        Hud 메뉴의 y 위치 오프셋
    l4n_view_punch_scale                        피격 흔들림 강도
    l4n_screen_shake_scale                      화면 진동 강도
【ConCommand】
    l4n_vm_offset2 [x/dx/y/dy/z/dz/reset] [value], 현재 사용 중인 뷰모델에 위치 오프셋 설정. d가 붙은 것은 증분; 매개변수 reset은 xyz를 0으로
    l4n_menu                                l4n 메인 메뉴 표시
    l4n_survivor_sequence_test,             장면 안 생존자 모델의 애니메이션에 문제가 없는지 검사. 일반적으로 애니메이션 mod와 관련 있음
    +l4n_player_list,                       더 많은 플레이어 정보 패널 표시; 매개변수 1을 붙여 bind하면 더블 클릭 시에만 표시되고, 싱글 클릭은 원본 점수판 표시
    +l4n_lookat [itempickup/helpinghand]    아이템 또는 쓰러진 팀원에게 손 뻗기 애니메이션 발동; 키에 bind하면 길게 눌러 loop 지원, 더블 클릭은 싱글 클릭에 비해 선·후 딜레이 애니메이션이 추가됨; 빠른 바인드: "bind v +l4n_lookat"
    l4n_placelight exponent 1 radius 2000   동적 환경 광원 배치. 매개변수 "remove"를 추가하거나 바인드된 키 더블 클릭으로 제거. 이 기능은 실내 보조광에 적합하며, 동적 광원은 성능이 좋지 않아 큰 폭의 프레임 저하가 있을 수 있음
    l4n_vm_selfillum                        현재 뷰모델의 자체 발광 강도 조정. 부호가 있으면 수치는 증분을 의미
    l4n_mat_showtextures                    mat_showtextures에 비해 문자열 매칭 기능 추가
    l4n_vm_2pbr                             현재 뷰모델의 재질을 PBR 재질로 변환. PBR2Source 도구로 생성한 재질에 적합; 매개변수 0으로 재질 복원
    l4n_print_launch_options                현재 게임이 인식할 수 있는 실행 옵션 출력
    l4n_reset_player_render_color           플레이어 엔티티의 색상 리셋
    l4n_env_report                          게임 실행 환경 정보 출력
    l4n_flush_unused_models                 사용하지 않는 모델의 캐시 즉시 정리
    l4n_random_player_render_color          플레이어 엔티티 색상 무작위화
    l4n_to_nekotoon                         매개변수 없이 실행하면 자기 모델 재질을 NekoToon으로 변환. 매개변수 pickplayer는 조준점에 있는 플레이어 대상, 매개변수 varms는 현재 손 모델 대상
    l4n_nekook_path_append "c:/test"        고우선순위 자산 검색 경로 추가. VPK 내 파일보다 우선순위가 높음
    l4n_nekook_path_remove "c:/test"        고우선순위 검색 경로 제거
    l4n_cvar                                convar 값 출력 또는 설정. 주로 콘솔에서 직접 접근할 수 없는 convar에 사용
    l4n_revert_cvar "cvar_name"             지정한 convar를 기본값으로 복원
    l4n_buildcubemaps                       원클릭으로 환경을 구성한 뒤 cubemaps 컴파일. allow_specular 매개변수를 추가하면 반사를 비활성화하지 않고 컴파일; https://developer.valvesoftware.com/wiki/Cubemaps
    l4n_fast_record                         demo 녹화 시작, 자동으로 이름 지정
    l4n_refresh_entity_random               모든 엔티티의 난수 갱신
    l4n_clear_datacache                     datacache 정리
    l4n_is_proxy_exist "proxy name"         재질 프록시 존재 여부 확인
    l4n_open_shader_cache_dir               셰이더 캐시 디렉터리 열기
    l4n_print_environment_variables         게임 프로세스의 환경 변수 출력
    l4n_reload_vgui_schemes                 vgui 리로드. mat_setvideomode로 해상도를 수정하여 리로드를 유발하는 방법의 대체로 사용 가능
    l4n_print_particles_manifest            particles_manifest 내용 출력
    l4nsurvivor_roll                        다음 l4nsurvivor 모델로 전환. 매개변수 없으면 자신, 매개변수 teammate면 모든 팀원 전환
    l4n_custom_command_menu                 설정 파일을 로드하고 커스텀 명령 메뉴 표시
    l4n_reload_sequence_event_vdf
    l4n_reload_config
【NekoShaders】
    mat_outline_thickness_scale 1.0     외곽선 굵기 배율, 0이면 외곽선 끔
    mat_pbr_where 0                     1로 설정하면 PBR 재질을 하이라이트 점멸. 어떤 재질이 PBR 셰이더를 사용하는지 찾는 용도
    mat_nekosky_overlay_                텍스처 경로 설정. NekoSky 스카이박스 특정 면의 오버레이 텍스처로 사용. 여섯 면의 접미사는 rt,bk,lf,ft,up,dn
    mat_nekosky_overlay_strength 1.0    NekoSky 오버레이 텍스처의 강도
    mat_neko_allow_invert_tonemap 1     일부 톤 매핑 커브가 색상에 미치는 영향을 억제할지 여부(nekotoon 등 일부 셰이더만 지원). 값이 2면 nekobloom이 활성화된 상태에서도 적용 허용
    mat_nekorefract_color_invert_exponent
    nekotoon:
        mat_nekotoon_allow_lightwarp 1      비평탄(non-flat) 렌더링 사용 여부
        mat_nekotoon_lambert_factor 1       환경 또는 손전등 조명의 그림자 강도
        mat_nekotoon_lighting_scale 1.0     조명 배율
        mat_nekotoon_rimlight_boost 3.0     $rimlightboost의 배율
        mat_nekotoon_rimlight_viewmodel_boost 1
        mat_nekotoon_brightness_limit 1.0   렌더링 결과의 밝기 제한. 모델 과노출 방지용
        mat_nekotoon_darkness_limit 0.02    렌더링 결과의 어두움 제한
        mat_nekotoon_lazy_texture_load 0    렌더링 시점에 해당 재질의 텍스처를 로드할지 여부
        mat_nekotoon_ignore_flat_normal 1   성능 향상을 위해 "flat_normal" 사용을 금지할지 여부. 값이 2면 더 엄격
    neko_engine_post:
        mat_neko_tonemapping_algorithm 6    ToneMapping 커브(0:Linear/1:Reinhard/2:Filmic(언차티드2)/3:CE(CryEngine2)/4:ACES(UE4 기본)/5:GranTurismo/6:Neutral(Unity)/7:NAES/8:LOG2(엔드필드)/9:AgX). -l4n_use_neko_engine_post 실행 옵션을 추가해야 사용 가능
        mat_neko_tonemapping_force_linear 0 linear tonemapping 강제 사용. 디버깅용
        mat_neko_gamma 2.2                  비디오 설정의 밝기와 유사한 효과. 비독점 전체 화면에서도 적용 가능
        mat_neko_engine_post_after 0        원본 화면과 대비하는 비율
        mat_nekobloom_luminance_threshold  NekoBloom 발동 밝기
        mat_nekobloom_scale                NekoBloom 강도
        mat_nekobloom_max_brightness       NekoBloom 밝기 제한
        mat_nekobloom_radius               NekoBloom 블러 반경
        mat_nekobloom_maptex_strength      NekoBloom 마스크 강도
        mat_nekobloom_maptex_weight        NekoBloom 마스크 가중치
        mat_nekobloom_blend_mode           NekoBloom 혼합 모드(1add, 2screen, 3softlight, 4replace)
        mat_neko_pre_tonemapping           더 이른 시점에 tonemapping 커브를 적용할지 여부(reshade bridge 활성화 시 자동 활성화, 일부 구성과 비호환)

l4n 각종 설정 파일의 템플릿(메모장으로 열어 구체적인 역할 확인):
    scheme_overrides_template.vdf
    localize_overrides.vdf
    config_template.vdf
    server_name_filter_template.txt

【other_tools.7z/VPKShellExtensions】
    Windows 탐색기에서 vpk 파일 썸네일과 mod 제목 메타 정보를 표시하는 플러그인

l4n_magic_converter
    생존자 mod 변환 도구


============For Modder==========
【neko_proxy.vmt】
    플랫폼 확장 재질 프록시 문서. 현재 탄약 수와 예비 탄약 수를 가져오는 프록시가 있음

사운드 스크립트 로딩:
    "l4n/scripts/sound" 디렉터리 아래의 txt 파일은 사운드 스크립트로 로드되며, 사운드 이벤트를 확장하는 데 사용됩니다(vpk에는 sound.cache가 있어야 함).
    예시:
        - l4n/scripts/sound/my_script.txt
        - sound/aaaa/ohhh.wav
        - sound/sound.cache
    pcf와 사운드 스크립트의 이름은 "제작자명_AK47.txt" 같은 방식으로 지어, 다른 mod와 충돌할 가능성을 줄이세요;

pcf 파티클 파일 로딩:
    "l4n/particles" 디렉터리 아래의 임의의 pcf 파일이 파티클 시스템에 로드되며(파일명 "!" 접두사에는 대응하는 효과가 있음), 파티클 이펙트를 확장하는 데 사용됩니다.

【mdl_extension.qc】
    mdl을 l4n에 맞추는 qc 예시

【other_tools.7z/nekomdl.exe】
    더 좋고, 더 빠르고, 더 강력한 mdl 컴파일러

【other_tools.7z/nekook.exe】
    설정에 따라 게임 또는 엔진 도구를 실행하며, 동시에 현재 디렉터리를 엔진의 파일 시스템에 마운트하여 현재 디렉터리의 게임 자산이 최고 우선순위로 엔진에 읽히게 함

【source_nekomimi.exe】
    오디오 도구. wav 음성 간 입 모양(립싱크) 데이터 복사, 또는 sound.cache 생성에 사용(현재 입 모양 데이터가 포함된 sound.cache 생성은 지원하지 않음)

【copy_sentence.bat】
    게임 원본 음성 파일에서 커스텀 음성 파일로 입 모양 데이터를 복사하는 프리셋

【build_sound_cache.bat】
    sound.cache 빠른 생성용. 주로 효과음에 사용하며, 입 모양 데이터가 포함된 음성에는 적합하지 않음


===========업데이트 로그==========
[2.37.0]
신규: convar l4n_reshade_draw
신규: convar l4n_thirdperson_fire_sound_fix
수정: "l4n_dynamic_light_muzzleflash 1"이 ak 같은 연사 속도에서 깜빡이는 문제
신규: convar l4n_player_list_vomitjar_icon_clip
제거: convar l4n_player_list_clipped_item_icons
신규: convar l4n_dlight_muzzleflash_prevent_tonemapscale
변경: "l4n_dynamic_light_"로 시작하는 convar를 "l4n_dlight_"로 이름 변경

[2.36.4] 2026-07-23
변경: config_template.vdf에 ReShade Bridge의 메모리 점유 문제를 해결하는 예시 매개변수 제공
변경: config.vdf에 환경 변수 설정 매개변수 제공
수정: l4nsurvivor의 몇 가지 문제
변경: l4n gui의 몇 가지 사용성 최적화
신규: convar mat_neko_pre_tonemapping
변경: 기본적으로 구버전 렌더링 파이프라인 사용. 새 파이프라인이 일부 구성에서 블룸과 톤 매핑이 작동하지 않는 것을 방지

[2.36.3]
수정: ReShade Bridge가 일부 dxvk 버전에서 작동하지 않는 문제

[2.36.2]
변경: convar l4n_survivor_sequence_fix를 l4n_survivor_sequence_strip으로 이름 변경
신규: convar l4n_thirdpersion_crosshair_dynamic
신규: convar l4n_dynamic_light_muzzleflash_brightness
신규: convar l4n_dynamic_light_muzzleflash_distance

[2.36.1]
수정: 이전 버전 후처리 과정의 몇 가지 색상 문제

[2.36.0]
수정: hud 팀원 정보 인계가 활성화된 상태에서, 일부 스크립트가 커스텀 봇 생성 시 크래시. 예: ColdFront 3챕터의 Mike
변경: ReShade Bridge가 기본 설정에서 Generic Depth의 설정을 고정
변경: ReShade의 더 나은 통합과 자동 노출 효과 최적화를 위해 게임 렌더링 과정을 일부 수정. 최종 주요 과정(기능 전부 켠 경우): 3DScene(f16 hdr)->NekoBloom:Garb->ApplyTonemapCurve(ldr)->ReShade->AutoExposure->NekoEnginePost(NekoBloom:Apply)->HUD
수정: l4n_magic_converter가 vpk 자체의 vgui vmt 사용 시 $basetexture 경로가 올바르게 변환되지 않는 버그

[2.35.6]
수정: ReShade Bridge가 맵 입장 후에만 필터 렌더링을 활성화하도록 강제하지 않음

[2.35.5]
수정: ReShade Bridge가 드라이버 크래시를 유발하는 문제 하나

[2.35.4]
수정: 일부 구성에서 dxvk와 ReShade Bridge 사용 시 드라이버가 크래시하는 버그

[2.35.3]
신규: nekotoon 재질 매개변수 $emissionTonemapScaleAmount
수정: l4n 메뉴에서 l4nsurvivor 비활성화 후, 메뉴를 다시 열면 다시 활성화할 옵션이 없는 문제
수정: l4nsurvivor 비활성화 후 플레이어 모델 관련 엔티티가 동기화되지 않는 문제

[2.35.2]
수정: ReShade Bridge가 간헐적으로 작동하지 않는 버그
변경: ReShade Bridge 기본 비활성화

[2.35.1]
변경: ReShade Bridge의 호환성 최적화. 여전히 문제가 있으면 ReShade의 플러그인 관리에서 "Left For Neko"를 비활성화하세요

[2.35.0]
신규: readme_l4n에 ReShade Bridge 사용 설명 추가
신규: convar l4n_server_filter
신규: convar l4n_patch_hud_scope
수정: 자동 노출이 지나치게 굼뜬 문제
수정: l4n_magic_converter의 변환 실패 버그 하나
신규: convar l4n_thirdpersion_crosshair_scale

[2.34.1]
수정: reshade의 depth 버퍼 취득이 깜빡이게 만드는 버그

[2.34.0]
수정: to_l4n_survivor가 생성한 mod에 모델이 표시되지 않는 버그
변경: l4n_survivor_sequence_fix가 확장된 애니메이션을 잘라낼 수 있게 됨. 자신이 호스트일 때 일부 캐릭터 mod가 아무 데서나 크기가 변하는 것을 방지
변경: config.vdf 설정 파일에 l4n_survivor_sequence_fix용 매개변수 추가
변경: l4n_survivor_sequence_fix 기본값을 0으로 설정
변경: l4nsurvivor의 생존자 사망 엔티티 소속 플레이어 판정 최적화
변경: to_l4n_survivor가 단일 생존자 캐릭터 mod 입력 지원
변경: l4n_survivor 기능 설명 업데이트
변경: l4nsurvivor의 자잘한 버그 수정
변경: +l4n_player_list가 생존자 플레이어의 흑백(빈사) 상태를 표시할 수 있게 됨
수정: 모델 옵션의 $TextureGroup 적용 이상 버그
제거: convar mat_nekosprite_draw
신규: convar l4n_allow_draw_sprite
신규: convar l4n_dynamic_light_muzzleflash
신규: convar l4n_thirdpersion_crosshair_alpha
신규: 서버명 블랙리스트 메커니즘. 기본 규칙은 server_name_filter_template.txt에 있음
수정: 일부 스카이박스 재질이 너무 밝은 버그
신규: l4n_magic_converter 생존자 모델 변환 도구
신규: l4nplugin 플러그인 시스템

[2.33.3]
수정: 모델 옵션에 StaticProp 모델이 표시되지 않음

[2.33.2]
수정: 모델 옵션 튕김 버그

[2.33.0] 2026-06-08
변경: 모델 옵션이 flexcontroller 지원
수정: l4n_patch_team_player_display의 버그 하나
수정: 모델 메뉴 목록이 갱신되지 않는 버그

[2.32.0]
변경: pbr 셰이더가 emissiveblend 지원
수정: nekotoon의 렌더링 오류 하나
변경: l4n_menu에 l4n_menu 표시 위치 수정 옵션 추가

[2.31.0]
변경: SkyBox 메뉴가 vmt 스캔 시 규격에 맞지 않는 vmt를 무시할 수 있게 됨
수정: -l4n_use_neko_engine_post 실행 옵션 추가 후 Refract 셰이더의 색 공간 문제
변경: NekoRefract의 반전 효과가 덜 눈부시게 함
수정: l4n_patch_team_player_display의 ID명 수정이 첫 맵 입장 시 적용되지 않음
수정: l4n_patch_team_player_display의 ID명 잘림·깨짐 문제
변경: l4n_patch_team_player_display가 점수판 아바타 수정 지원
변경: +l4n_player_list가 l4nsurvivor 아바타를 표시할 수 있게 됨
변경: l4n_patch_team_player_display에 값 2 옵션 추가
신규: convar mat_nekorefract_color_invert_exponent

[2.30.1] 2026-05-29
수정: background bik이 대응하는 mp3와 매칭되지 않음
수정: to_l4n_survivor가 vtf vgui를 사용하는 vpk를 처리하지 못함
변경: 시작 전 게임 버전을 확인하며, 예상과 다른 버전은 경고 팝업 표시

[2.30.0] 2026-05-28
신규: convar l4n_allow_consistency_check
신규: convar l4n_to_nekotoon_allow_outline
변경: 메뉴의 nekotoon 변환 옵션 옆에 외곽선 비활성화 옵션 추가. 부적합한 모델에 외곽선을 사용하는 것을 피하는 데 도움
변경: to_l4n_survivor가 "s_panel*.vmt"와 "*incap.vmt"를 인식할 수 있게 됨
변경: l4n hud 메뉴의 불투명도 증가
수정: sv_consistency 기본값이 1이 아님

[2.29.1] - 2026-05-27
수정: sequence_event.vdf 파일이 없는 경우, 무기 뷰모델의 파티클 호출 시 크래시하는 버그

[2.29.0] - 2026-05-27
신규: convar l4n_max_background_bik
변경: convar mat_tonemapping_occlusion_use_stencil을 콘솔에서 보이게 하고 값 저장 활성화
변경: RestrictAddons가 비활성화된 경우 sv_consistency 1의 효과를 무효화하고, 제한된 모델의 셰이더 재질과 BBox 검사를 건너뜀
수정: 2.28 버전에서 발생한 demo 재생 크래시
신규: concmd l4n_reload_sequence_event_vdf
신규: 뷰모델 파티클 호출 리다이렉트 기능. 설정 파일 sequence_event.vdf
신규: concmd l4n_reload_config

[2.28.1] - 2026-05-25
변경: convar l4n_gui_font_fallback 제거
변경: mat_nekobloom_maptex_strength 기본값을 40으로 낮춤
변경: RestrictAddons 활성화 시 일부 기능 제한

[2.28.0] - 2026-05-24
신규: convar l4n_custom_command_menu
변경: nekotoon 재질이 강한 빛에서 nekobloom과 미묘한 반응을 일으킬 수 있음
신규: 뷰모델 단위의 무기 커스텀 조준경 기능
변경: mat_neko_allow_invert_tonemap 기본값을 2로 변경
변경: 로컬 대비가 nekobloom 적용 지점에서 혼합되지 않음
신규: convar mat_nekobloom_maptex_strength
신규: convar mat_nekobloom_maptex_weight
신규: convar mat_nekobloom_blend_mode
신규: convar l4n_patch_team_player_display
신규: convar l4n_hud_scope_draw_padding_block

[2.27.0] - 2026-05-16
신규: vgui 테마 매개변수 덮어쓰기 기능. scheme_overrides.vdf 설정 파일 사용
변경: l4n_menu에 특정 팀원에게 l4nsurvivor 모델을 지정하는 옵션 추가
수정: l4nsurvivor의 steamid 할당 알고리즘이 봇(인공지능)에서 예상과 다르게 동작
수정: l4n에 맞춰지지 않은 생존자 모델이 l4nsurvivor로 변환된 후 스케일을 지원하지 않음
변경: 문제 가이드에 재질 투명 관련 항목 추가
수정: outline 셰이더가 어두운 곳에서 색이 너무 밝음
신규: outline 셰이더 매개변수 $OutlineZOffset
신규: nekotoon 셰이더 매개변수 $emissionStrength
신규: concmd l4nsurvivor_roll

[2.26.0] - 2026-05-12
변경: nekotoon 환경광 알고리즘. 명암 대비 감소
변경: readme_l4n의 문제 가이드 업데이트

[2.25.1]
변경: mat_neko_allow_invert_tonemap의 기본값을 1로 설정

[2.25.0]
신규: convar l4n_allow_lobby_cheats
신규: convar mat_neko_allow_invert_tonemap
신규: convar l4n_force_dummy_addoninfo
변경: nekobloom의 기본 매개변수와 알고리즘 조정

[2.24.1]
변경: readme_l4n 내용 업데이트
수정: 문제 mod 판정이 새로 발견된 상황에 대응할 수 있게 됨

[2.24.0]
신규: convar l4n_flashlight_r/g/b
수정: l4n_flashlight_factor 값이 1을 넘을 때 일부 재질의 렌더링 이상
수정: l4n_menu의 페이지 표시기 표시 오류
수정: config_template.vdf 내 sv_cheat 철자 오류
수정: l4nsurvivor 모델을 사용하는 플레이어가 idle 상태일 때 hud 아바타 표시가 되지 않는 문제

[2.23.0]
신규: config.vdf 설정 항목 "custom_commands"
신규: concmd l4n_print_particles_manifest
수정: 일부 설정을 앞뒤 순서대로 읽을 수 있게 하여 관련 기능 사용 경험 향상
수정: particles_manifest의 패치가 작성 순서를 따르지 않음

[2.22.0]
수정: NekoBloom이 음수 픽셀 값을 만나면 검은 다각형이 나타남
수정: 일부 설정을 앞뒤 순서대로 읽을 수 있게 하여 관련 기능 사용 경험 향상
신규: convar mat_nekosprite_draw

[2.21.0]
신규: concmd l4n_reload_vgui_schemes. vgui 리로드. mat_setvideomode로 해상도를 수정하여 리로드를 유발하는 방법의 대체로 사용 가능
신규: concmd l4n_revert_cvar. 지정한 convar를 기본값으로 복원
신규: convar mat_nekobloom_radius

[2.20.0]
변경: NekoBloom 알고리즘 최적화. 효과가 더 자연스러워짐
신규: convar l4n_flashlight_factor
신규: convar mat_neko_bloom_max_brightness
변경: mat_neko_bloom_luminance_threshold 기본값을 2로 설정
변경: mat_neko_bloom_scale의 단위
변경: neko_bloom 문자가 들어간 모든 convar를 nekobloom으로 이름 변경. scale 단위 수정에 따른 호환성 문제 회피

[2.19.3]
수정: NekoBloom에 고스트(잔상)가 나타나는 버그

[2.19.2]
변경: NekoBloom의 기본 매개변수와 성능 최적화

[2.19.1]
변경: 버전 번호 업데이트

[2.19.0]
신규: neko_engine_post 블룸 효과(NekoBloom)
신규: convar mat_neko_engine_post_after
신규: convar mat_neko_bloom_luminance_threshold
신규: convar mat_neko_bloom_scale

[2.18.1]
변경: l4n_open_shader_cache_dir이 NVIDIA 또는 AMD 드라이버 계층의 셰이더 캐시 폴더를 열 수 있게 됨

[2.18.0]
신규: 영어 현지화 지원
신규: concmd l4n_is_proxy_exist
신규: 재질 프록시 "SelectFirstIfNonZero"
수정: neko_engine_post의 담즙 효과 렌더링 시 콘솔 오류
신규: concmd l4n_open_shader_cache_dir
신규: concmd l4n_print_environment_variables
수정: l4n에 맞춰지지 않은 생존자 모델이 담즙 얼룩 재질로 전환되지 않음
수정: l4n_allow_flashlightmuzzleflash의 기본값이 1이 아님

[2.17.0]
변경: l4n survivor 규격 업데이트. 새 규격은 VGUI 아바타와 쓰러짐 배경 이미지 지원을 추가(클라이언트 렌더링 표시에서 점수판은 당분간 미지원)
변경: to_l4n_survivor.exe가 VGUI 아바타와 쓰러짐 배경 이미지가 포함된 vpk를 생성할 수 있게 됨
신규: convar l4n_allow_hud_team_player_display

[2.16.2]
수정: -l4n_use_neko_engine_post 실행 옵션 추가 후, 엔티티 외곽선 색 공간이 올바르지 않은 문제

[2.16.1]
신규: 게임 실행용 bat 스크립트. 메모리 문제를 겪는다면 이 스크립트로 게임을 실행해 보세요
변경: mat_neko_gamma가 상태를 저장할 수 있게 함

[2.16.0]
수정: neko_engine_post의 음수 로컬 대비 효과 이상
변경: l4n_menu에 로컬 대비를 제어하는 옵션 추가

[2.15.0]
변경: mat_neko_gamma의 단위
변경: neko_engine_post가 근사 커브가 아닌 표준 커브로 srgb 출력
수정: l4n_game_usage의 datacache 계산 시 오버플로 버그

[2.14.1]
수정: neko_engine_post 비네트와 담즙 흐림 효과의 색 공간 이상
수정: -use_neko_engine_post 실행 옵션 추가 후 nightvision 필터가 너무 밝음

[2.14.0]
수정: neko_engine_post 비네트 효과 이상
변경: neko_engine_post가 로컬 대비 지원

[2.13.0]
변경: neko_engine_post 셰이더가 담즙 효과 지원

[2.12.0]
변경: hdr 조명 데이터가 없는 맵에서도 톤 매핑이 정상 작동하게 함
삭제: convar l4n_force_hdr_enable

[2.11.0]
신규: convar l4n_pin_viewmodel
신규: nekotoon 매개변수 $BaseTexture2BackFace
변경: nekotoon 매개변수 $BaseTexture2Tint의 w값 의미
수정: Refract 셰이더와 NekoEnginePost의 호환성 문제
수정: l4n_prevent_varms_stretching과 일부 mod의 호환성 문제
변경: l4n_tonemap_scale의 convar 값 저장 활성화

[2.10.1]
신규: l4n_menu 항목 "애니메이션의 손가락 늘어남 금지"

[2.10.0]
신규: l4n_menu 옵션 "엔티티 난수 갱신", "모델 무작위 스케일 증분", "NekoSky 오버레이 텍스처 강도", "1인칭 손전등 총구 화염 허용"
신규: concmd l4n_refresh_entity_random
신규: convar l4n_charactor_model_random_scale 0.0
신규: convar mat_nekosky_overlay_strength 1.0
변경: convar l4n_flashlightmuzzleflash를 l4n_allow_flashlightmuzzleflash로 이름 변경
수정: Sequence 프록시가 가져오는 값이 올바르지 않은 문제
수정: lock_datacache_size가 충분히 엄격하지 않은 문제
신규: concmd l4n_clear_datacache

[2.9.9]
수정: 모델 옵션 전환 시 끊기는 문제
변경: NekoSky의 오버레이 텍스처가 노출의 제어를 받지 않음
변경: convar l4n_tonemap_scale의 최솟값을 0.001로
수정: -l4n_use_neko_engine_post 실행 옵션 추가 후, 저격총 조준경의 색상 이상
수정: -l4n_use_neko_engine_post 실행 옵션 추가 후, 엔티티 외곽선 효과의 색상 이상
신규: l4n_menu에 엔티티 외곽선 효과를 비활성화 또는 활성화하는 옵션 제공

[2.9.8]
변경: l4n_menu의 "장면 어두운 곳 밝게 하기 설정"에 더 많은 옵션 추가
신규: concmd l4n_fast_record
신규: l4n_menu 옵션 "빠른 DEMO 녹화"
변경: 환경 반사 문제 감지 알고리즘 최적화

[2.9.7]
변경: l4n_menu의 톤 매핑 설정이 현재 HDR 렌더링 상태를 표시할 수 있게 됨
변경: -l4n_use_neko_engine_post 실행 옵션 추가 후, HDR 렌더링을 강제로 활성화하지 않음. HDR 렌더링을 지원하지 않는 일부 맵의 조명 문제 방지
변경: l4n_tonemap_scale이 HDR 렌더링이 꺼진 상태에서도 적용될 수 있게 됨
신규: l4n_menu 옵션 "HDR 렌더링 강제 활성화"

[2.9.6]
수정: -l4n_use_neko_engine_post 실행 옵션 추가 후, 환경 반사가 손상된 일부 맵에서 몇몇 재질의 렌더링 이상
수정: -l4n_use_neko_engine_post 실행 옵션 추가 후, 일부 재질 그라데이션 효과의 색상이 비정상적으로 선명함
신규: convar l4nsurvivor_allow_bot 1. 봇의 l4nsurvivor 사용 허용 여부
제거: convar l4n_proxy_alpha_clamping
변경: neko_engine_post를 사용하지 않는 경우, 장면 어두운 부분 밝게 하기 기능에 별도의 프리셋 매개변수 사용

[2.9.5]
신규: convar l4n_player_list_clipped_item_icons 1. +l4n_player_list가 아이템 아이콘 렌더링 시 게임 기본 잘라내기 비율 사용; 일부 hud mod는 커스텀 비율이 있으므로 0으로 설정하면 올바르게 렌더링될 수 있음
신규: +l4n_player_list의 플레이어 음성(보이스) 표시

[2.9.4]
변경: l4n_menu에 맵 어두운 부분 밝게 하기 설정 추가
수정: -l4n_use_neko_engine_post 실행 옵션 추가 후, 노멀맵이 추가된 맵 재질이 렌더링 시 조명이 비정상적으로 전부 밝아짐
신규: convar l4n_ambient_darkness_limit 0.0
신규: convar l4n_lightmap_darkness_limit 0.0
변경: neko_engine_post 셰이더의 담즙 효과 제거

[2.9.3]
수정: -l4n_use_neko_engine_post 실행 옵션 추가 후, 맵 원경 안개 효과 렌더링 이상
변경: neko_engine_post 셰이더가 기초적인 담즙 흐림 효과를 지원

[2.9.2]
수정: -l4n_use_neko_engine_post 실행 옵션 추가 후, 게임 화면이 깜빡이는 버그
변경: convar mat_nekotoon_allow_flat_bumpmap 제거
신규: convar mat_nekotoon_ignore_flat_normal 1

[2.9.1]
수정: -l4n_use_neko_engine_post 실행 옵션 추가 후, 맵 원경 안개 효과 렌더링 이상
변경: convar l4n_use_nekosky의 기본값을 1로 변경

[2.9.0]
신규: 재질 프록시 Sequence
변경: 재질 프록시 Cycle에 매개변수 layer 추가
수정: NekoToon이 ATI2N 노멀을 올바르게 해석하지 못함
신규: convar l4n_proxy 1

[2.8.8]
수정: -l4n_use_neko_engine_post 실행 옵션 추가 시, 맵 광 반점 효과의 색 공간 이상
수정: nekosky 셰이더의 텍스처 오버레이 효과가 노출의 영향을 받지 않음

[2.8.7]
신규: convar mat_nekotoon_rimlight_viewmodel_boost, mat_nekotoon_lambert_factor
수정: $rimlightViewModelFactor가 작동하지 않는 버그
신규: nekotoon 셰이더 매개변수 $rimlightExponent, $rimlightAlbedoTint, $lambertFactor
제거: nekotoon 셰이더 매개변수 $flashLightLambertRange

[2.8.6]
신규: convar l4n_use_nekosky 0. l4n의 NekoSky 셰이더로 하늘을 렌더링할지 여부
신규: "mat_nekosky_overlay_"로 시작하고 접미사가 rt/bk/lf/ft/up/dn인 convar 6개. 텍스처 경로를 설정하여 NekoSky 스카이박스 특정 면의 오버레이 텍스처로 사용
수정: +l4n_player_list에 봇의 현지화 번역 이름이 표시되지 않음
신규: pbr 셰이더 매개변수 $BaseTexture2Tint
신규: nekotoon 셰이더 매개변수 $BaseTexture2, $Frame2, $BaseTexture2Tint

[2.8.5]
신규: 설정 파일 localize_overrides.vdf. 현지화 번역 텍스트를 덮어쓰는 데 사용하며, 생존자 이름을 수정하는 예시가 포함됨
신규: convar l4n_proxy_alpha_clamping 1. 재질 프록시가 $alpha 값을 음수로 수정하는 것을 금지할지 여부. 색상 혼합 이상 방지
수정: -l4n_use_neko_engine_post 실행 옵션 추가 후 일부 재질 색상 이상
신규: nekotoon 재질 매개변수 $MatcapUV
변경: l4n 셰이더가 재질 매개변수를 가져오는 효율 향상

[2.8.4]
변경: l4n 메뉴에 맵 환경 반사 수리 튜토리얼 추가
신규: convar l4n_player_identity_render_color 0. 플레이어 관련 엔티티의 염색 금지 여부
신규: 설정 파일 key_bind_acts 설정 항목. 게임 설정의 키 바인딩 옵션을 확장하는 데 사용
수정: l4n에 맞춰지지 않은 생존자 mod의 스케일을 조정할 수 없음. 이 버그는 이전 버전에서 발생
신규: concmd l4n_cvar
신규: concmd l4n_buildcubemaps
신규: convar l4n_env_cubemap_redirect 0
수정: -l4n_use_neko_engine_post 실행 옵션 추가 후 일부 서버에 들어갈 수 없는 문제

[2.8.3]
수정: convar mat_neko_force_lineay_tonemapping이 작동하지 않는 버그. mat_neko_tonemapping_force_linear로 이름 변경
수정: l4n_nekook_path_append와 l4n_nekook_path_remove가 받는 매개변수의 문자 인코딩 버그
변경: to_l4n_survivor 생성 결과의 호환성 향상
수정: nekotoon 환경광이 너무 밝은 문제

[2.8.2]
수정: nekotoon 손전등 효과가 작동하지 않는 버그

[2.8.1]
수정: 셰이더가 DXVK의 대량 메모리 점유를 유발하는 버그
변경: FXAA 기능 제거

[2.8.0]
변경: l4n_menu 모델 설정 메뉴에 옵션과 정보 추가
변경: NekoEnginePost 셰이더에 AgX 톤 매핑 추가
변경: NekoEnginePost 셰이더에 FXAA 안티앨리어싱 기술 추가
신규: convar mat_nekotoon_allow_lightwarp 1
수정: 로컬 mod 메타데이터 수리 실패 버그
수정: pcf 파티클 확장 실패 버그 하나
수정: 외곽선 셰이더의 Z-fighting 문제 하나
신규: concmd l4n_nekook_path_append. 고우선순위 자산 검색 경로 추가. VPK 내 파일보다 우선순위가 높음
신규: concmd l4n_nekook_path_remove. 고우선순위 검색 경로 제거

[2.7.7]
신규: 모델 부품 메뉴의 리셋 옵션
수정: -no_l4n_gui 추가 후 맵에 들어갈 수 없는 버그
변경: 일부 버전 컴파일러가 생성한 모델을 만났을 때 l4nsurvivor의 호환성 향상

[2.7.6]
신규: convar mat_neko_gamma 2.2. 비디오 설정의 밝기와 같은 효과이지만 비독점 전체 화면에서도 적용 가능. -l4n_use_neko_engine_post 실행 옵션 필요
변경: l4n_menu에 gamma 조정 옵션 추가
신규: nekotoon 매개변수 $rimlightViewModelFactor

[2.7.5]
변경: nekotoon 셰이더에 $NoFlexNormal 매개변수 추가
신규: convar l4n_vm_sway_ignore_helpinghand 1. 손 뻗기 애니메이션 발동 시 sway 효과 비활성화 여부. 활성화하면 일부 플러그인 애니메이션(예: ADS)에 sway 효과가 없어질 수 있고, 비활성화하면 무기가 고빈도로 떨릴 수 있음
수정: 폰트 렌더링이 뒤엉키게 만드는 버그 하나
변경: 실행 옵션에 -l4n_use_neko_engine_post가 있을 때, l4n_tonemap_scale의 기본값을 1.8로 설정

[2.7.4]
수정: +l4n_player_list의 렌더링 깜빡임

[2.7.3]
변경: convar l4n_gui_font_fallback의 기본값을 1로 설정
수정: PBR 셰이더의 flex가 작동하지 않음
변경: 메인 메뉴에 옵션 추가
변경: +l4n_player_list의 렌더링

[2.7.2]
변경: l4n_menu에 여러 빠른 옵션 추가
변경: nekotoon의 엔티티 염색이 HSV의 색조 사용
변경: +l4n_lookat이 기본적으로 아이템 또는 쓰러진 팀원 손 뻗기 애니메이션 사이에서 무작위 재생. 이 두 애니메이션을 지정하는 매개변수 추가
신규: concmd l4n_to_nekotoon
신규: convar l4n_mat_specular 1
신규: convar l4n_gui_font_fallback 0. 폰트가 지원하지 않는 문자를 보완할지 여부(현재 +l4n_player_list에만 영향). 활성화하면 더 많은 폰트를 로드하여 메모리 점유 증가

[2.7.1]
변경: mat_neko_tonemapping_algorithm 기본값을 6으로 설정
변경: neko_engine_post에 tonemapping 알고리즘 3개 추가(6:Neutral/7:NAES/8:LOG2)
변경: nekotoon이 일부 tonemapping 효과 활성화 시 채도를 높임. 채도가 과도하게 손실되는 것을 방지

[2.7.0]
신규: convar mat_neko_tonemapping_algorithm 2. neko_engine_post 셰이더의 tonemapping 알고리즘(0:Linear(소스)/1:Reinhard/2:Uncharted2(언차티드2)/3:CE/4:ACES(UE4 기본)/5:GranTurismo). -l4n_use_neko_engine_post 실행 옵션을 추가해야 사용 가능
신규: 실행 옵션 "-l4n_use_neko_engine_post". 이 실행 옵션을 추가하면 neko_engine_post가 엔진의 engine_post 셰이더를 대체함

[2.6.6]
변경: 플레이어 엔티티의 일부 하위 요소가 l4nsurvivor 모델을 동기화할 수 있게 함
변경: +l4n_player에 서버 이름과 플레이어 수 표시
변경: convar l4n_flush_unused_model을 l4n_auto_flush_unused_models로 이름 변경
신규: concmd l4n_flush_unused_models
변경: concmd l4n_placelight에 매개변수 3개 추가

[2.6.5]
수정: NekoToon과 Outline의 $alpha가 작동하지 않음
수정: hlmv 스크린샷 시 셰이더의 렌더링 오류

[2.6.4]
변경: convar l4n_enhanced_material_pxory 기본값을 0으로
신규: convar l4n_disable_survivor_bandage 1. 생존자 모델의 붕대 파티클 비활성화 여부. 기본 비활성화인 이유는 신장 조정 기능이 원본 붕대 파티클과 충돌하기 때문
추가: +l4n_player_list의 플레이어 수 표시
수정: 게임 시작 후 첫 맵 입장 시 pbr 셰이더의 렌더링 오류

[2.6.3]
변경: Shader Model 3.0 감지 비활성화
변경: convar l4nsurvivor에 매개변수 2 추가. 이 매개변수는 팀원 모델을 교체하지 않음
수정: pbr 셰이더에서 외곽선 활성화 시 튕김 발생

[2.6.2]
신규: outline 셰이더 vmt 매개변수 "$OutlineHSV"와 "$OutlineBaseTextureBlend"
신규: convar l4n_force_skyname
신규: l4n_menu의 SkyBox 전환 메뉴

[2.6.1]
제거: Entity proxy의 감지 팝업

[2.6.0]
변경: NekoToon의 MatCap 효과가 $LightingScale의 영향을 받을 수 있게 함(파괴적 업데이트)
신규: pbr 셰이더가 이중 재질 동적 혼합 지원
신규: pbr과 nekotoon의 $hsv 매개변수. 색조·채도·명도로 텍스처 색상 수정
신규: pbr과 nekotoon의 여러 새 특성. 매개변수가 너무 많으니 pbr.vmt와 nekotoon.vmt에서 확인하세요
변경: nekotoon의 $emission이 마스크 모드 지원
신규: nekotoon 재질 매개변수 $multiply. 앞머리 가짜 그림자 구현에 사용 가능
신규: nekotoon 재질 매개변수 $eyebrow. 눈썹 투과 구현에 사용
신규: nekotoon이 염색 마스크 지원
신규: nekotoon 재질 매개변수 $LightWarpExponent. 그림자 강도 조정에 사용 가능
신규: nekotoon 재질 매개변수 $FakeShadow
신규: 재질 프록시 Cycle. 모델 애니메이션 진행도를 가져오는 데 사용
신규: l4n 전용 재질 프록시 PlayerAttachment와 PlayerBottom
신규: 재질 프록시 RemapValClamp와 Modulo. 번잡한 수학 연산 단순화에 사용
신규: convar l4n_engine_post_allow_local_contrast 1. 샤프닝과 유사한 필터 효과 사용 허용 여부(아드레날린 또는 저체력 또는 boomer 담즙이 사라질 때 나타남)
신규: convar l4n_survivor_scale 1.0. 생존자 모델 크기의 전역 설정
신규: convar l4n_enhanced_material_pxory 0. 일부 재질 프록시 강화 여부. 예: EntityRandom이 1인칭과 3인칭의 난수 시드를 동기화
신규: convar l4n_proxy_entity_random_seed_offset 0.0. EntityRandom의 난수 시드 오프셋
변경: "l4n_player_lighting_scale"과 "l4n_player_stylized_amibentlight"의 특수 감염자 지원이 충분하지 않아, 비생존자 엔티티 지원을 제거하고 "l4n_survivor_lighting_scale"과 "l4n_survivor_stylized_amibentlight"로 이름 변경
수정: PBR 셰이더의 손전등 렌더링 버그 하나
변경: PBR, NekoToon, Outline 셰이더의 성능 최적화
변경: PBR의 $Emission 매개변수 삭제
변경: NekoToon의 RimLight 렌더링 개선. 더 자연스럽게 표현
신규: convar mat_nekotoon_allow_flat_bumpmap

[2.5.0]
수정: l4n_tonemap_scale이 일부 맵에서 작동하지 않는 버그
변경: 손 뻗기 애니메이션 재생 시 l4n_vm_sway_ 비활성화

[2.4.9]
수정: l4n_vm_selfillum이 조명 있는 $DetailBlendMode를 무시하지 않음
변경: readme_l4n.txt의 몇 가지 설명 업데이트
변경: l4n_survivor_model_use_nekotoon에 매개변수 2 추가. 매개변수 2로 변환한 재질은 외곽선을 활성화하지 않음

[2.4.8]
변경: 쓰레기 모델 회수에 버퍼 시간 추가
수정: dxvk 디버그 레이어가 의도치 않게 표시됨

[2.4.7]
변경: OutOfMemory 팝업에 dxvk 감지 추가

[2.4.6]
수정: scheme이 Tahoma 폰트를 교체하여 +l4n_player_list의 폰트 오류 발생
신규: 실행 옵션 "-hide_addons". addons 디렉터리의 모든 mod를 임시로 비활성화하는 데 사용
신규: nekotoon 재질 매개변수 "$DarknessLimit"

[2.4.5]
수정: +l4n_player_list가 일부 시스템에서 폰트 누락
변경: +l4n_player_list에 일반 감염자 킬 카운트 추가
신규: concmd l4n_env_report

[2.4.4]
변경: 설정 항목을 수정하지 않는 한, 기본적으로 datacache 제한을 2048MB로 강제 설정
수정: 더 이른 시점에 모델 설정을 로드. l4n_vm_2pbr의 설정이 일부 상황에서 작동하지 않는 것을 방지
수정: 엔진이 console.log 파일을 정상적으로 비우지 못함
신규: concmd l4n_reset_player_render_color

[2.4.3]
신규: 설정 파일 "disable_chromehtml" 매개변수. 엔진 내장 브라우저 커널을 비활성화하는 데 사용하며, 100mb 정도의 메모리 점유를 줄일 수 있음
신규: convar l4n_flush_unused_model 1
변경: convar l4n_survivor를 l4nsurvivor로 이름 변경
변경: convar l4n_survivor_allocation_algorithm을 l4nsurvivor_allocation_algorithm으로 이름 변경

[2.4.2]
수정: 크래시 문제 하나. 이 문제의 영향을 받는 것: l4n_vm_2pbr, l4n_vm_selfillum, l4n_survivor_model_use_nekotoon
신규: concmd l4n_print_launch_options. 현재 게임이 인식할 수 있는 실행 옵션 출력

[2.4.1]
변경: l4n_survivor_sequence_fix 기본값을 1로 설정
변경: l4n_player_list_show_steam_avatar 기본값을 1로 설정
변경: +l4n_player_list의 체력바 표시

[2.4.0]
신규: concmd l4n_vm_2pbr. 현재 뷰모델의 재질을 PBR 재질로 변환 시도; 매개변수 0으로 재질 복원
수정: l4n_vm_offset2가 해당 명령을 사용해 본 적 없는 뷰모델에서 효과가 없는 버그
변경: l4n_vm_offset2에 reset 매개변수 추가. xyz를 0으로 만드는 데 사용
신규: convar l4n_player_list_show_steam_avatar 1
신규: convar mat_pbr_where 0

[2.3.3]
변경: nekotoon의 손전등 렌더링이 밝기 제한 지원
변경: Outline 셰이더가 물 렌더링 완전 지원

[2.3.2]
변경: mdl 호환 문서에 vta용 안구 추적 예시 추가
변경: nekotoon AOMap의 알고리즘
수정: nekotoon과 pbr이 잘못된 수면 높이를 가져옴

[2.3.1]
수정: mat_nekotoon_lazy_texture_load를 껐을 때 텍스처 오류

[2.3.0]
신규: nekotoon 재질 매개변수: "$bumpstrength", "$bumpmap2", "$bumpstrength2", "$bumptransform2"
신규: nekotoon AOMap 지원. $mask1의 a채널 사용
수정: nekotoon과 pbr 셰이더의 수중 렌더링 문제
제거: nekotoon과 pbr의 재질 매개변수 $dxt5nm
신규: convar mat_nekotoon_lazy_texture_load 0
신규: convar l4n_game_usage_padding 24
신규: concmd l4n_mat_showtextures

[2.2.8]
수정: l4n을 처음 사용하는 사용자의 모델 설정이 정상적으로 저장되지 않음

[2.2.7]
변경: 생존자 사망 엔티티의 소속 플레이어 판정 최적화. l4n_survivor 적용 시 올바른 모델을 부여하는 데 도움
변경: readme_l4n의 편집(레이아웃)
변경: config_template의 주석 설명 최적화
신규: convar l4n_survivor_allocation_algorithm 1. l4n_survivor가 팀원에게 모델을 할당하는 알고리즘 설정용

[2.2.6]
변경: +l4n_player_list의 텍스트 렌더링 최적화. 현재 폰트가 해당 문자를 지원하지 않으면, 해당 문자를 지원하는 다른 폰트로 자동 렌더링
수정: +l4n_player_list 일부 항목의 문자 렌더링 잘림

[2.2.5]
제거: 내장된 본고딕(思源黑体) 폰트 파일
변경: 설정에 폰트 파일 경로 매개변수 추가

[2.2.4]
신규: convar l4n_menu_font_size
신규: modder 도구 nekook과 nekomdl
변경: l4n_vm_selfillum이 부호 지원. 이때 수치는 증분을 의미
변경: l4n_survivor의 모델 메모리 해제 메커니즘 최적화
변경: l4n_menu의 상호작용
변경: nektoon이 $decal 지원

[2.2.3]
수정: l4n_vm_selfillum이 맵 이동 후 자체 발광을 더 밝게 만듦

[2.2.2]
신규: concmd l4n_vm_selfillum 1. 현재 1인칭 무기의 자체 발광 강도 조정
신규: nekotoon 매개변수 "$flashlightlambertrange"
수정: nekotoon $flipbackfacenormal의 전환 버그

[2.2.1]
신규: convar l4n_force_hdr_enable 0. HDR 렌더링 강제 활성화 여부. HDR 렌더링을 지원하지 않는 맵에서 일부 모델의 조명 문제가 발생할 수 있음
수정: l4n_tonemap_scale이 HDR 렌더링을 지원하는 일부 맵에서 효과 없음
신규: convar l4n_prevent_varms_stretching 0

[2.2.0]
신규: 모프 키 시선 추적 기능

[2.1.9]
수정: 이전 버전에서 발생한 일부 모델 부품 전환 작동 불능 버그

[2.1.8]
수정: nekotoon의 $lightingscale이 작동하지 않음
변경: 새 알고리즘으로 mat_nekotoon_brightness_limit의 제한을 받는 픽셀이 더 자연스러워짐
변경: +l4n_player_list가 더블 클릭 시 게임 점수판 표시
제거: convar mat_nekotoon_min_ambient_luminance
추가: convar mat_nekotoon_darkness_limit
수정: nekotoon $emission의 색상이 정확하지 않음

[2.1.7]
신규: concmd l4n_vm_offset2
제거: convar l4n_vm_offset2_x, l4n_vm_offset2_y, l4n_vm_offset2_z
수정: skin 전환이 일부 엔티티에서 작동하지 않는 버그

[2.1.6]
신규: convar mat_nekotoon_brightness_limit 1.0. nekotoon 렌더링 결과의 최대 밝기를 제어하여 과노출 방지
신규: nekotoon 재질 매개변수 $flipbackfacenormal 1. 뒷면의 법선을 보정할지 여부(뒷면이 손전등에 비춰지게 할 수 있음)

[2.1.5]
변경: nekotoon rimlight의 가시 방향과 기타 매개변수. 더 자연스럽게 보이도록
신규: convar mat_nekotoon_rimlight_boost 4. nekotoon의 $rimlightboost 강도를 추가 조정

[2.1.4]
신규: convar l4n_survivor_sequence_fix 1. 생존자 애니메이션의 잠재적 문제를 수정할지 여부. 수정 후 재시작 필요
신규: concmd l4n_survivor_sequence_test. 생존자 애니메이션에 문제가 없는지 검사. 일반적으로 애니메이션 mod와 관련 있음
수정: 셰이더에서 $basetexturetransform의 translate가 작동하지 않는 문제
수정: 외곽선 셰이더와 일부 뷰모델 무기가 함께 있을 때 렌더링 오류
변경: 화면 공간 외곽선에 거리의 영향을 약간 추가
변경: nekotoon의 $rimlight가 $lightingscale의 영향을 받을 수 있게 함
신규: convar mat_outline_thickness_scale 1. 외곽선 셰이더의 외곽선 굵기 제어

[2.1.3]
수정: 생존자 뷰모델(v모델)과 월드모델(w모델)을 강제로 일치시키는 기능이 작동하지 않는 버그
변경: l4n_menu의 레이아웃
신규: convar l4n_menu_offset_x와 l4n_menu_offset_y
신규: nekotoon의 재질 매개변수 $rimlight와 $rimlightboost
변경: nekotoon이 $nocull 활성화 시 뒷면의 법선을 자동 보정. 조명 방향이 반대가 되는 것(손전등 아래에서 조명이 어두운 현상)을 방지

[2.1.2]
수정: 모델 부품 설정이 확률적으로 사라지는 버그
수정: l4n_player_list의 튕김 버그

[2.1.1]
수정: l4n_survivor_model_use_nekotoon으로 일부 재질이 하얗게 변함
수정: 일부 모델의 부품 전환이 작동하지 않는 문제
수정: l4n_survivor의 1인칭 다리가 동기화되지 않는 버그

[2.1.0]
수정: l4n_survivor_model_use_nekotoon으로 재질을 NekoToon 재질로 변환할 때, 투명 관련 일부 매개변수 값이 복사되지 않는 버그
변경: 문서의 l4n_survivor_model_use_nekotoon 설명(수정 후 게임 재시작 필요; 일부 재질은 변환 후 효과가 제작자가 직접 맞춘 것에 미치지 못할 수 있으며, 특히 일부 모델의 얼굴)

[2.0.9]
수정: l4n_survivor_model_use_nekotoon이 일부 재질에서 텍스처를 순백으로 만듦

[2.0.8]
수정: 맵에 입장하지 않은 상태에서 l4n_tonemapping_scale 실행 시 튕김
신규: convar l4n_survivor_model_nodecal. 생존자 모델의 데칼 효과(핏자국)를 비활성화할지 여부. 수정 후 게임 재시작 필요
신규: convar l4n_survivor_model_use_nekotoon. 생존자 모델 재질의 적합한 셰이더를 NekoToon으로 교체할지 여부. 수정 후 게임 재시작 필요
수정: 클라이언트 예측이 빈 데이터의 제스처 애니메이션을 재생하여 튕김(xdReanimsBase 사용 시 이런 버그를 겪을 수 있음. 이런 애니메이션의 인덱스는 서버 인덱스 범위를 벗어나 재생되어서는 안 됨; 현재 수정은 서버 인덱스 범위 내의 것이 재생되지 않는 것을 보장하지 못하며, 서버 인덱스 범위 내에도 빈 애니메이션 데이터가 있어서는 안 됨; 일부 클라이언트 예측은 sequence 이름으로 매칭하는데, 빈 데이터 sequence에는 Activity 정보가 없으므로, 이 수정은 이런 빈 데이터 sequence의 이름만 수정한 것)
변경: 크래시 후 mdmp 생성 준비 전에 메모리 점유를 확인하고, 이상이 있으면 보고 팝업 표시

[2.0.7]
추가: convar l4n_game_usage. hud에 게임 안정성 관련 데이터 표시 제어
추가: convar l4n_game_usage_pos. l4n_game_usage 표시 위치 제어
추가: mdmp 생성 인계. 일부 크래시에서 mdmp가 생성되지 않는 것을 수정하는 데 사용
추가: 힙 메모리 할당 실패 팝업
변경: config_template.vdf 내 튕김 관련 설명
변경: l4n_survivor의 시체 소속 플레이어 판정 최적화

[2.0.6]
추가: datacache 메모리 점유의 hud 표시기
수정: l4n_menu가 게임 해상도 전환 후 렌더링되지 않음

[2.0.5]
추가: cvar l4n_tonemap_scale. 맵 hdr의 노출 강도 제어
변경: 설정 파일 매개변수 lighting_factor_spot, lighting_factor_point, lighting_factor_directional, stylized_amibent_light 제거
추가: convar l4n_player_lighting_scale. 플레이어 모델의 조명 강도 제어
추가: convar l4n_player_stylized_amibentlight. 플레이어 모델의 스타일화 환경광 사용 스위치

[2.0.4]
변경: +l4n_lookat 실행 중 l4n_sway_ 비활성화. 일부 무기 애니메이션이 카메라를 움직여 경련이 일어나는 것을 방지
수정: +l4n_lookat이 일부 무기에서 애니메이션 길이가 올바르지 않음

[2.0.3]
수정: +l4n_player_list를 일부 키에 바인드하면 매개변수 1로 판정됨
변경: 설정 파일에 매개변수 "wave_cache_max_kilobytes" 추가
변경: 설치 패키지에 탐색기에서 vpk 파일 썸네일과 mod 제목 정보를 표시하는 플러그인 동봉

[2.0.2]
변경: l4n_vm_sway_의 애니메이션 경련 문제 수정 시도

[2.0.1]
변경: WaveDataCache의 메모리 상한을 512mb로 수정
변경: 플레이어 모델 갱신 후 무기의 bonemergecache 재구축을 기본 비활성화

[2.0.0]
변경: datacache 내 WaveData의 메모리 제한을 전술적으로 조정
수정: l4n_survivor 사용 시 발생할 수 있는 튕김 버그 하나
수정: legs 엔티티의 식별 오류로 다른 플레이어 몸에 모델이 두 개 보이는 현상

[1.9.9]
수정: snd_rebuildaudiocache로 오디오 캐시 재구축 시 튕김
변경: +l4n_lookat 중에 밀치기로 중단 가능
변경: nekotoon 보조광의 밝기 증가
변경: nekotoon $emission 활성화 시 보조광을 비활성화하지 않음
추가: cvar mat_nekotoon_min_ambient_luminance
변경: 튕김을 유발하는 버그 하나 수정 시도
변경: l4n_vm_sway가 멀티 플레이 시 나타날 수 있는 애니메이션 끊김 수정 시도

[1.9.8]
수정: +l4n_lookat 더블 클릭 시 애니메이션이 끝나지 않음
변경: 설정 파일의 일부 주석과 font의 기본값

[1.9.7]
수정: 일부 서버에서 l4n_vm_sway의 애니메이션 효과 끊김
수정: +l4n_lookat이 애니메이션을 중단할 수 없는 버그

[1.9.6]
수정: l4n_commoninfected_noragdoll의 의미가 반대로 됨

[1.9.5]
변경: -heapsize의 512mb 상한 해제. 자세한 정보는 config_template.vdf에

[1.9.4]
추가: cvar l4n_vm_offset2_x, l4n_vm_offset2_y, l4n_vm_offset2_z; 1인칭 무기 모델에 개별적으로 위치 오프셋을 조정하는 용도
추가: 설정 파일 매개변수 "min_tall". 폰트의 최소 크기 제어용
수정: +l4n_lookat이 무기 전환 후 중단되지 않는 버그, 그리고 애니메이션 연결이 너무 빠른 버그
변경: cvar "l4n_commoninfected_noragdoll" 추가, 설정 파일 매개변수 "no_common_infected_ragdoll" 제거
변경: cvar "l4n_mat_colorcorrection" 추가, 설정 파일 매개변수 "no_color_correction" 제거
변경: readme_l4n.txt 문서 업데이트
신규: +l4n_player_list의 입력 매개변수 지원. 매개변수 1을 붙이면 더블 클릭 시에만 표시되고, 싱글 클릭은 원본 점수판 표시
수정: l4n_survivor의 첫 전환이 작동하지 않는 문제
수정: l4n_survivor가 멀티 플레이 팀원의 모델을 전환할 때 발생할 수 있는 들고 있는 무기 위치 어긋남
수정: cvar "l4n_survivor"를 0으로 설정하면 Lux's Survivor Legs의 엔티티 모델이 갱신되지 않음
추가: build_sound_cache.bat. sound.cache 빠른 생성용

[1.9.3]
추가: l4n_survivor의 Lux's Survivor Legs 호환
추가: command +l4n_player_list; 더 많은 플레이어 정보 표시
변경: 더 많은 플레이어 정보 패널을 더 이상 tab 더블 클릭으로 표시하지 않음. 콘솔 명령 +l4n_player_list를 키에 바인드하는 방식을 사용하세요
변경: readme_l4n.txt의 일부 설명

[1.9.2]
변경: 릴리스 버전에 디버그 정보 활성화. 버그 추적 편의

[1.9.1]
수정: nekotton 셰이더 matcap의 렌더링 오류

[1.9.0]
신규: cvar l4n_vm_sway_interp, l4n_vm_sway_scale; 1인칭 모델의 시점 회전 지연 효과 제어용
신규: cvar l4n_vm_offset_y, l4n_vm_offset_z, l4n_vm_offset_x; 1인칭 모델 위치 오프셋 제어용
변경: 불필요한 혼란을 줄이기 위해 이 문서 업데이트
신규: NekoToon 셰이더 매개변수 $MATCAP2, $MATCAP2TEXTURE, $MATCAP2TINT, $MATCAP2LIGHTING
변경: l4n_survivor 전환의 성능 최적화

[1.8.8]
수정: PBR 셰이더의 BRDFLUT 색 공간 문제. 높은 거칠기의 계산 결과 오류를 유발

[1.8.7]
수정: +l4n_lookat이 일부 무기에서 발동하지 않는 문제

[1.8.6]
수정: 시작 시 튕길 수 있는 버그 하나. 이전 버전에서 이 문제를 겪은 사용자는 설정 파일에서 force_bind_l4n_menu를 0으로 설정하면 회피 가능

[1.8.5]
수정: +l4n_lookat이 대응 시퀀스가 없는 모델에서 튕김
수정: l4n_survivor가 손 모델의 상태를 갱신하지 않는 버그
수정: 모델 부품 메뉴가 작동하지 않는 버그

[1.8.4]
추가: cvar +l4n_lookat. 아이템 손 뻗기 애니메이션 발동; 키에 bind하면 길게 눌러 loop 지원, 싱글 클릭은 더블 클릭에 비해 선·후 딜레이 애니메이션이 추가됨; 빠른 바인드: "bind v +l4n_lookat"
수정: 게임 중 l4n_survivor 전환으로 인한 3인칭 들고 있는 무기 위치 어긋남
추가: nekotoon 셰이더 매개변수 $lightwarpsrgbtexture, $lightwarphalf, $lightwarpscale, $lightwarpmapoffset
변경: nekotoon 셰이더가 $mask1 마스크를 통해 하나의 재질에서 여러 lightwarp 사용 지원
제거: 설정 파일 항목 "random_si_model"
추가: cvar l4n_specialinfected_randommodel, l4n_survivor

[1.8.2]
신규: wav 음성의 입 모양 데이터 복사 또는 sound.cache 생성을 위한 cli 도구. "bin/neko/source_nekomimi.exe"에 위치
신규: 음성 mod에 입 모양 데이터를 빠르게 복사하는 bat 스크립트. "bin/neko/copy_sentence.bat"에 위치
수정: 문서의 "srcipts" 철자 오류. 올바른 철자는 "scripts"

[1.8.1]
변경: 1인칭 총구 손전등 화염을 완전히 제거 가능(멀티 플레이 유효). 콘솔 명령 "l4n_flashlightmuzzleflash"로 활성화 또는 비활성화
변경: 설정 파일 매개변수 "viewmodel_muzzle_flash" 제거
추가: ConVar "l4n_game_hud_visible". 게임 HUD의 표시/숨김 제어용

[1.8.0]
추가: 파티클 시스템의 pcf 파일 추가 로딩 지원

[1.7.9]
추가: 자동 업데이트. 창작마당에서 L4N을 구독해야 적용됨

[1.7.8]
NekoShaders|신규: vmt 매개변수 $outlinefixedthickness. 외곽선 굵기 보정의 활성화/비활성화용
NekoShaders|신규: PBR 셰이더의 Flex 지원
NekoShaders|신규: $matcap 혼합 모드 2개, vmt 매개변수 "$matcaplighting"
NekoShaders|수정: $emissionflashlighttint가 흰색으로 강제되는 버그
NekoShaders|신규: NekoToon 카메라 AO
신규: 콘솔 명령 l4n_placelight, l4n_menu
변경: 메인 메뉴 L4N Survivor 설정의 로직
신규: addon vpk 사운드 스크립트 로딩 지원

[1.7.7]
NekoShaders|수정: "$emissionflashlighttint"가 기본 활성화되는 버그

[1.7.6]
NekoShaders|신규: pbr과 nekotoon용 vmt 매개변수 "$emissionflashlighttint"

[1.7.5]
NekoShaders|최적화: 외곽선 셰이더의 z-fighting 문제

[1.7.4]
신규: 재질 프록시 2개 ClipAmmo와 RemainingAmmo. 탄약과 예비 탄약 수를 가져오는 용도

[1.7.3]
NekoShaders|수정: 콘솔 exit/quit 명령이 게임 튕김을 유발
NekoShaders|변경: $outlinetexture의 포맷이 ATI1N일 때 r채널을 마스크로 사용
NekoShaders|변경: 외곽선 너비가 원근의 영향을 받지 않음

[1.7.2]
NekoShaders|수정: PBR 셰이더가 맵 Brush에서 조명 밝기가 너무 낮음
NekoShaders|추가: 숫자 표시 셰이더
NekoShaders|수정: $outlinetexture 콘솔 오류

[1.7.1]
변경: index_buffer_size의 기본값을 32768로
변경: 문서의 설명

[1.7.0]
NekoShaders|변경: 외곽선 셰이더가 더 자연스러운 조명 사용
NekoShaders|수정: 외곽선을 활성화한 1인칭 손 모델이 무기 뒷면 컬링에 문제를 일으킴
NekoShaders|수정: nekotoon에 새 매개변수 $lightingscale 추가
NekoShaders|수정: 손전등 아래의 AlphaTest 렌더링 오류

[1.6.9]
수정: 1.6.7에서 발생한 tab 메뉴 작동 불능
변경: config.vdf 매개변수의 기본값
수정: 다른 패치류와의 호환성 향상
NekoShaders|수정: PBR 재질에서 자체 발광 활성화 시 콘솔 오류

[1.6.8]
NekoShaders|수정: NekoToon의 이전 버전에서 발생한 조명이 검게 변하는 버그

[1.6.7]
수정: 입력기(IME)로 인한 플랫폼 관련 키 무반응
NekoShaders|수정: PBR 높은 거칠기에서 envmap이 충분히 흐려지지 않는 문제
NekoShaders|변경: PBRShader가 BRDF LUT 사용

[1.6.6]
수정: [1.6.5] 버전에서 index_buffer_size가 작동하지 않는 문제

[1.6.5]
NekoShaders|추가: DXT5nm과 ATI2N 노멀맵 압축 포맷 지원
NekoShaders|변경: 시차 맵핑이 더 이상 노멀맵의 a채널을 사용하지 않음

[1.6.4]
NekoShaders|추가: nekotoon의 시선 추적 지원
NekoShaders|추가: $outlinelighting 매개변수
NekoShaders|수정: 외곽선 셰이더의 $nocull에서의 문제
복원: stylized_amibent_light, lighting_factor_directional, lighting_factor_point, lighting_factor_spot 관련 기능
추가: VERTEX_BUFFER_SIZE 수정

[1.6.3]
NekoShaders|수정: NekoToon의 HLMV에서의 튕김 버그 하나

[1.6.1]
NekoShaders|추가: matcap 마스크
NekoShaders|수정: outline 셰이더가 $nocull 활성화 시의 렌더링 오류
제거: receive_flashlight, stylized_amibent_light, lighting_factor_directional, lighting_factor_point, lighting_factor_spot 관련 기능

[1.6.0]
신규: NekoToon 셰이더. 관련 매개변수는 nekotoon.vmt 파일에

[1.5.3]
신규: pbr 셰이더 매개변수 $emission. 자체 발광 활성화 제어용
변경: pbr 셰이더 자체 발광이 기본적으로 $basetextur의 색상 사용
신규: pbr 셰이더 매개변수 $emissiontint. 자체 발광 강도 제어용

[1.5.2]
neko 셰이더의 l4n 플랫폼 의존 제거. neko 셰이더 단독 설치가 편해지고, hlmv&hammer 등 도구에서 셰이더가 로드되기에도 유리

[1.5.0]
추가: 차세대 게임에 다 있는 PBR 셰이더 추가. 매개변수는 모두 pbr.vmt에

[1.4.0]
수정: 일부 미호환 캐릭터 mod의 신장을 수정할 수 없는 문제
추가: 나를 얕보지 마라

[1.3.9]
플랫폼에 맞춰지지 않은 캐릭터 mod에 신장 조정 지원 추가

[1.3.8]
팀원의 l4n_survivor 모델 할당 개선
내장 폰트를 본고딕(思源黑体)으로 업데이트. 폰트 렌더링에서 ???가 나타나는 상황 감소

[1.3.7]
붕대 이펙트 비활성화. 커스텀 신장의 플레이어 모델이 붕대로 인해 정점이 터져 화면이 깨지는 것을 방지

[1.3.6]
죽을 때 눈을 감음(死亦瞑目)
모델 스케일이 적용되지 않는 모델의 경우, 부품 메뉴에 스케일 조정 입구를 표시하지 않음
모델 스케일 메뉴의 프리셋 값 조정
mod 제작자가 기본 스케일을 설정할 수 있도록 지원

[1.3.5]
config.vdf: "random_si_model" 설정 항목 추가

[1.3.4]
멀티 플레이에서 새 점수판의 임시 체력(허혈) 진행도 계산 오류 수정

[1.3.3]
발 ik 보정이 작동하지 않는 버그 하나 수정

[1.3.2]
부품 메뉴의 튕김 버그 하나 수정
l4n survivor: idle 상태일 때 모델 전환이 즉시 동기화되지 않는 문제 수정
l4n survivor: idle 상태에서 사망 시 소속 플레이어 판정이 올바르지 않은 문제 수정

[1.3.1]
모델 skin 설정을 즉시 저장
생존자 사망 엔티티의 스케일 지원
l4n survivor: idle 플레이어의 모델 교체가 올바르지 않은 문제 수정

[1.3.0]
메인 메뉴 일부 항목의 상태 저장 지원
l4n survivor: 실제 플레이어가 조종하지 않는 봇 지원
l4n survivor: 생존자 시체의 소속 플레이어 판정 최적화 시도
l4n survivor: 메인 메뉴에 전역 모델 전환 추가

[1.2.7]
모델에 $TextureGroup이 설정되어 있으면 부품 메뉴에서 재질 프리셋 전환을 제공.

[1.2.5]
부품 메뉴 튕김 문제 수정
자잘한 버그 몇 개

[1.2.3]
모델 스케일 알고리즘 최적화
스케일 수치의 상한·하한 제어

[1.2.2]
발 IK 높이 보정이 스케일 없음 상태에서 작동하지 않는 문제 수정

[1.2.1]
발 IK 높이 보정이 작동하지 않는 문제 수정

[1.2.0]
모델 스케일 기능 추가
부품 설정 파일 재구성. 이전에 저장한 설정은 사라짐

[1.1.0]
발 IK 최적화 MDL 확장 추가
MOD 제작자를 위한 예시 qc 추가

[1.0.2]
동적 환경 광원의 조사 범위를 대폭 축소. 소스 엔진이 렌더링에 서툰 야외 장면에서 fps가 급락하는 것을 방지

[1.0.1]
메인 메뉴에 동적 환경 광원 비활성화 옵션 추가
점수판에 필요한 폰트 파일 내장

[1.0.0]
새로운 더블 클릭 TAB 점수판 UI

[0.9.1]
상호작용 가능한 아이템을 조준할 때 동적 환경 광원을 갱신하지 않음
이전 버전에서 발생한 튕김 버그 하나 수정
생존자 시체의 소속 플레이어 판정 최적화 시도


[0.9.0]
E키로 동적 환경 광원 생성 가능
모든 특수 감염자 모델 강제 출근(등장)
더 많은 플레이어 패널을 TAB 더블 클릭 표시로 변경
플레이어 패널 표시 시 채팅 목록 숨김
rebuild_sound_cache_for_addons.bat, 완료 후 자동 종료

[0.8.1]
일부 맵 입장 시 튕김 수정. 이전 버전에서 발생한 버그

[0.8.0]
tab 키로 더 많은 플레이어 정보 패널 표시, tab 더블 클릭으로 원래 패널 표시

[0.7.0]
파괴적 업데이트. 기존 l4n survivor mod는 다시 변환하거나 다시 맞춰야 함
경로가 너무 길어 엔진이 불안정해지는 것을 방지하기 위해, l4n survivor 모델의 루트 디렉터리를 "models/l4n/s"로 변경.
l4n survivor 전환 시, 이전에 사용한 모델에 참조가 없으면 자동으로 메모리 점유를 해제하여 메모리 초과 튕김 확률을 감소

[0.5.0]
메인 메뉴 추가. 메뉴는 페이지 넘기기 지원
[0.4.1]
l4n_survivor: 콘솔에 계속 오류가 출력되는 버그 하나 수정
[0.4.0]
스타일화 환경광의 매개변수 조정
to_l4n_survivor: 일부 mod에서 캐릭터가 투명해지는 문제 수정
[0.3.9]
config.vdf의 기본값 업데이트
[0.3.8]
to_l4n_survivor.exe 업데이트
[0.3.7]
설정 항목 추가: generate_addoninfo
[0.3.6]
l4n_survivor의 3인칭 무기 파지 위치 어긋남 수정
