.class final enum Lorg/jbox2d/dynamics/BoundaryResponse;
.super Ljava/lang/Enum;
.source "BoundaryResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/dynamics/BoundaryResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DESTROY_BODY:Lorg/jbox2d/dynamics/BoundaryResponse;

.field private static final synthetic ENUM$VALUES:[Lorg/jbox2d/dynamics/BoundaryResponse;

.field public static final enum FREEZE_BODY:Lorg/jbox2d/dynamics/BoundaryResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/jbox2d/dynamics/BoundaryResponse;

    const-string v1, "FREEZE_BODY"

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/BoundaryResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/BoundaryResponse;->FREEZE_BODY:Lorg/jbox2d/dynamics/BoundaryResponse;

    new-instance v0, Lorg/jbox2d/dynamics/BoundaryResponse;

    const-string v1, "DESTROY_BODY"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/dynamics/BoundaryResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/dynamics/BoundaryResponse;->DESTROY_BODY:Lorg/jbox2d/dynamics/BoundaryResponse;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jbox2d/dynamics/BoundaryResponse;

    sget-object v1, Lorg/jbox2d/dynamics/BoundaryResponse;->FREEZE_BODY:Lorg/jbox2d/dynamics/BoundaryResponse;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jbox2d/dynamics/BoundaryResponse;->DESTROY_BODY:Lorg/jbox2d/dynamics/BoundaryResponse;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jbox2d/dynamics/BoundaryResponse;->ENUM$VALUES:[Lorg/jbox2d/dynamics/BoundaryResponse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/dynamics/BoundaryResponse;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/jbox2d/dynamics/BoundaryResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/dynamics/BoundaryResponse;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/dynamics/BoundaryResponse;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jbox2d/dynamics/BoundaryResponse;->ENUM$VALUES:[Lorg/jbox2d/dynamics/BoundaryResponse;

    array-length v1, v0

    new-array v2, v1, [Lorg/jbox2d/dynamics/BoundaryResponse;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
