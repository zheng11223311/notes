.class public final enum Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;
.super Ljava/lang/Enum;
.source "DeviceOrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

.field public static final enum ORIENTATION_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

.field public static final enum ORIENTATION_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

.field public static final enum ORIENTATION_REVERSE_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

.field public static final enum ORIENTATION_REVERSE_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

.field public static final enum UNKONWN:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    const-string v1, "UNKONWN"

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->UNKONWN:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    .line 35
    new-instance v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    const-string v1, "ORIENTATION_PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    .line 37
    new-instance v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    const-string v1, "ORIENTATION_REVERSE_LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    .line 39
    new-instance v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    const-string v1, "ORIENTATION_REVERSE_PORTRAIT"

    invoke-direct {v0, v1, v5}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    .line 41
    new-instance v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    const-string v1, "ORIENTATION_LANDSCAPE"

    invoke-direct {v0, v1, v6}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->UNKONWN:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->$VALUES:[Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    return-object v0
.end method

.method public static values()[Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->$VALUES:[Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    invoke-virtual {v0}, [Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    return-object v0
.end method
