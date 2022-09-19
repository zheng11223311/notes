.class public Lcom/youku/gamecenter/config/GameCenterProfile;
.super Ljava/lang/Object;
.source "GameCenterProfile.java"


# static fields
.field public static PRODUCT_ID:I = 0x0

.field public static final PRODUCT_TUDOU_ID:I = 0x5

.field public static final PRODUCT_YOUKU_ID:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    sput v0, Lcom/youku/gamecenter/config/GameCenterProfile;->PRODUCT_ID:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static isTudouProduct()Z
    .locals 2

    .prologue
    .line 15
    sget v0, Lcom/youku/gamecenter/config/GameCenterProfile;->PRODUCT_ID:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isYoukuProduct()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 19
    sget v1, Lcom/youku/gamecenter/config/GameCenterProfile;->PRODUCT_ID:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
