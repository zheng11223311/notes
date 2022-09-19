.class public final enum Lorg/jbox2d/dynamics/joints/LimitState;
.super Ljava/lang/Enum;
.source "LimitState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/dynamics/joints/LimitState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AT_LOWER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

.field public static final enum AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

.field private static final synthetic ENUM$VALUES:[Lorg/jbox2d/dynamics/joints/LimitState;

.field public static final enum EQUAL_LIMITS:Lorg/jbox2d/dynamics/joints/LimitState;

.field public static final enum INACTIVE_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/jbox2d/dynamics/joints/LimitState;

    const-string v1, "INACTIVE_LIMIT"

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/joints/LimitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    new-instance v0, Lorg/jbox2d/dynamics/joints/LimitState;

    const-string v1, "AT_LOWER_LIMIT"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/dynamics/joints/LimitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    new-instance v0, Lorg/jbox2d/dynamics/joints/LimitState;

    const-string v1, "AT_UPPER_LIMIT"

    invoke-direct {v0, v1, v4}, Lorg/jbox2d/dynamics/joints/LimitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    new-instance v0, Lorg/jbox2d/dynamics/joints/LimitState;

    const-string v1, "EQUAL_LIMITS"

    invoke-direct {v0, v1, v5}, Lorg/jbox2d/dynamics/joints/LimitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL_LIMITS:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jbox2d/dynamics/joints/LimitState;

    sget-object v1, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL_LIMITS:Lorg/jbox2d/dynamics/joints/LimitState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->ENUM$VALUES:[Lorg/jbox2d/dynamics/joints/LimitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/dynamics/joints/LimitState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/jbox2d/dynamics/joints/LimitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/dynamics/joints/LimitState;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/dynamics/joints/LimitState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->ENUM$VALUES:[Lorg/jbox2d/dynamics/joints/LimitState;

    array-length v1, v0

    new-array v2, v1, [Lorg/jbox2d/dynamics/joints/LimitState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
