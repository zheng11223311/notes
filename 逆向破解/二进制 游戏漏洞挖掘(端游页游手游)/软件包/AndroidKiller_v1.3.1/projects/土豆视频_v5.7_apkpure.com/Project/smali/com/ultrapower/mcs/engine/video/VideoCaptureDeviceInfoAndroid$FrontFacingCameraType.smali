.class public final enum Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
.super Ljava/lang/Enum;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrontFacingCameraType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public static final enum Android23:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public static final enum GalaxyS:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public static final enum HTCEvo:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public static final enum None:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->None:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 55
    new-instance v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    const-string v1, "GalaxyS"

    invoke-direct {v0, v1, v3}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 56
    new-instance v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    const-string v1, "HTCEvo"

    invoke-direct {v0, v1, v4}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 57
    new-instance v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    const-string v1, "Android23"

    invoke-direct {v0, v1, v5}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->None:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->$VALUES:[Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    return-object v0
.end method

.method public static values()[Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->$VALUES:[Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v0}, [Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    return-object v0
.end method
