// l4n에 맞춘 몇 가지 qc 명령 예시입니다. 상황에 맞게 유연하게 응용하세요

$NekoModel "Head" {
    studio "my_head_model.gltf"
    // .......
    // $Attachment "eyes" 는 안구 중심입니다. 위치가 부적절하면 시선 추적이 부정확해집니다
    flex "eye_look_up" // gltf 파일 안의 네 방향 셰이프 키 이름에 대응합니다
    flex "eye_look_down"
    flex "eye_look_左"
    flex "eye_look_right"
    // 새로 추가하는 flexcontroller는 기존 목록의 맨 아래에 추가해야 합니다. 기존 순서가 깨져 표정 멀티플레이 동기화 문제가 생기는 것을 방지하기 위함입니다
    flexcontroller eyes range -1 1 l4neyes_updown
    flexcontroller eyes range -1 1 l4neyes_rightleft
    "%eye_look_up" = max(-l4neyes_updown, 0) // flex와 flexcontroller 바인딩
    "%eye_look_down" = max(l4neyes_updown, 0)
    "%eye_look_right" = max(-l4neyes_rightleft, 0)
    "%eye_look_左"      = max(l4neyes_rightleft, 0)

    // l4n의 모델 옵션에는 그룹 이름이 l4n인 컨트롤러가 표시됩니다
    flex "my_flex1"
    flexcontroller l4n range 0 1 "形态键控制器1"
    "%my_flex1" = "形态键控制器1"

    flex "my_flex2"
    flexcontroller l4n range 0 1 "形态键控制器2"
    "%my_flex2" = "形态键控制器2"
}

$Model "Head" "my_head_model.smd" {
    // ...
    flexfile "my_head_model.vta" {
        defaultflex frame 0
        // .....
        flex "eye_look_up"      frame 41 // 셰이프 키의 vta 안에서의 위치와 일치시킵니다
        flex "eye_look_down"    frame 42
        flex "eye_look_left"    frame 43
        flex "eye_look_right"   frame 44

        flex "my_flex1"         frame 45
        flex "my_flex2"         frame 46
    }
    // .....
    flexcontroller eyes range -1 1 l4neyes_updown
    flexcontroller eyes range -1 1 l4neyes_rightleft
    "%eye_look_up"    = max(-l4neyes_updown, 0)
    "%eye_look_down"  = max(l4neyes_updown, 0)
    "%eye_look_right" = max(-l4neyes_rightleft, 0)
    "%eye_look_left"  = max(l4neyes_rightleft, 0)


    flexcontroller l4n range 0 1 "形态键控制器1"
    "%my_flex1" = "形态键控制器1"

    flexcontroller l4n range 0 1 "形态键控制器2"
    "%my_flex2" = "形态键控制器2"
}

// 엔진의 한계 때문에 모든 BodyGroup 옵션의 조합 수는 2147483647을 초과할 수 없습니다
// Model/Body/NekoModel도 BodyGroup에 속합니다

$BodyGroup "鞋子" {
    studio "高跟鞋.smd"
    blank
}

// 두 개를 초과하면 ⭐ 접두사를 붙여야 합니다. 정적 표정과의 충돌을 방지하기 위함입니다
$BodyGroup "⭐服装" {
    studio "衣服1.smd"
    studio "衣服2.glb"
    studio "衣服3.gltf"
    blank
    studio "衣服4.fbx"
}

$KeyValues
{
    "left4neko" {
        "name" "mdl的用户友好型名称"
        "name_suffix" "弗兰嘻嘻"
        "player_foot" {
            "body_group" "鞋子"
            "0" "0.0,0.0"
            "1" "-2.1,-60.0"
        }
        "scale" "0.5"
    }
}


$TextureGroup "材质预设"
{
	{ "Body"        "Face"          }
	{ "skin1\Body"  "skin1\Face"    }
    { "Body2"       "Face2"         }
    { ..... }
}
// 1: Body.vmt -> Body.vmt          Face.vmt -> Face.vmt
// 2: Body.vmt -> skin1\Body.vmt    Face.vmt -> skin1\Face.vmt
// 3: Body.vmt -> Body2.vmt         Face.vmt -> Face2.vmt

// 여러 개의 $TextureGroup을 지원하려면 nekomdl을 사용해야 합니다
$TextureGroup "衣服颜色" {...}
$TextureGroup "头发颜色" {...}