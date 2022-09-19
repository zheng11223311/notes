import { circleStrokeMesh, circleStrokeMesh1, circleStrokeMesh2, ring1, ring2, ring3, ring4, ring5, ring6, ring7, ring8, ringMesh1, ringMesh2, ringMesh3, ringMesh4, ringMesh5, ringMesh6, ring9, ring10, ring11, circleStrokeMesh3, circleStrokeMesh4, circle, ringMesh7, ringMesh8 } from './TBasicObject';
// 组

import { Group } from "three";

// 创建水池组
const poolGroup:Group=new Group()

// 创建剑组
const swordGroup:Group=new Group()

// 创建内层时空圈
export const spaceTimeGroup:Group=new Group()
spaceTimeGroup.add(
    circle,
    ring1,ring2,ring3,ring4,ring5,ring6,ring7,ring8,ring9,ring10,ring11,
    circleStrokeMesh,circleStrokeMesh1,circleStrokeMesh2,circleStrokeMesh3,circleStrokeMesh4,
    ringMesh1,ringMesh2,ringMesh3,ringMesh4,ringMesh5,ringMesh6,ringMesh7,ringMesh8
    )



export const groupList:Group[]=[
    swordGroup,
    spaceTimeGroup
]
