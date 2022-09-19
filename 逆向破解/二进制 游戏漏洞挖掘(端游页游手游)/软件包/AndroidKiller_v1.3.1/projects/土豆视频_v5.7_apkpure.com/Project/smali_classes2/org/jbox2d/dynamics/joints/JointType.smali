.class public final enum Lorg/jbox2d/dynamics/joints/JointType;
.super Ljava/lang/Enum;
.source "JointType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/dynamics/joints/JointType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISTANCE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

.field private static final synthetic ENUM$VALUES:[Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum GEAR_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum MOUSE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum PRISMATIC_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum PULLEY_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum REVOLUTE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

.field public static final enum UNKNOWN_JOINT:Lorg/jbox2d/dynamics/joints/JointType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "UNKNOWN_JOINT"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->UNKNOWN_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "REVOLUTE_JOINT"

    invoke-direct {v0, v1, v4}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "PRISMATIC_JOINT"

    invoke-direct {v0, v1, v5}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->PRISMATIC_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "DISTANCE_JOINT"

    invoke-direct {v0, v1, v6}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->DISTANCE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "PULLEY_JOINT"

    invoke-direct {v0, v1, v7}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->PULLEY_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "MOUSE_JOINT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->MOUSE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    new-instance v0, Lorg/jbox2d/dynamics/joints/JointType;

    const-string v1, "GEAR_JOINT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/joints/JointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->GEAR_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/jbox2d/dynamics/joints/JointType;

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->UNKNOWN_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->PRISMATIC_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->DISTANCE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jbox2d/dynamics/joints/JointType;->PULLEY_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->MOUSE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->GEAR_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jbox2d/dynamics/joints/JointType;->ENUM$VALUES:[Lorg/jbox2d/dynamics/joints/JointType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/dynamics/joints/JointType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/jbox2d/dynamics/joints/JointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/dynamics/joints/JointType;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/dynamics/joints/JointType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->ENUM$VALUES:[Lorg/jbox2d/dynamics/joints/JointType;

    array-length v1, v0

    new-array v2, v1, [Lorg/jbox2d/dynamics/joints/JointType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
