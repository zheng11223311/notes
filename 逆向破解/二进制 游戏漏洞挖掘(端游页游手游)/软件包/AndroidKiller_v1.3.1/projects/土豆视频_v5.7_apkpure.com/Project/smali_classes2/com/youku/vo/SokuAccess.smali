.class public Lcom/youku/vo/SokuAccess;
.super Ljava/lang/Object;
.source "SokuAccess.java"


# instance fields
.field public aaid:Ljava/lang/String;

.field public final brand:Ljava/lang/String;

.field public final btype:Ljava/lang/String;

.field public final deviceid:Ljava/lang/String;

.field public final dim:Ljava/lang/String;

.field public ds:Ljava/lang/String;

.field public filter:Ljava/lang/String;

.field public final guid:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public kref:Ljava/lang/String;

.field public log:Ljava/lang/String;

.field public final mac:Ljava/lang/String;

.field public network:Ljava/lang/String;

.field public operator:Ljava/lang/String;

.field public final os:Ljava/lang/String;

.field public final os_ver:Ljava/lang/String;

.field public pg:Ljava/lang/String;

.field public pz:Ljava/lang/String;

.field public seq:Ljava/lang/String;

.field public sh:Ljava/lang/String;

.field public final site:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public final ver:Ljava/lang/String;

.field public vs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "11"

    iput-object v0, p0, Lcom/youku/vo/SokuAccess;->log:Ljava/lang/String;

    .line 11
    const-string v0, "2"

    iput-object v0, p0, Lcom/youku/vo/SokuAccess;->site:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/youku/vo/DeviceInfo;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/vo/SokuAccess;->brand:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/vo/SokuAccess;->btype:Ljava/lang/String;

    .line 19
    const-string v0, "phone"

    iput-object v0, p0, Lcom/youku/vo/SokuAccess;->dim:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/youku/vo/DeviceInfo;->DEVICEID:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/vo/SokuAccess;->deviceid:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/youku/vo/DeviceInfo;->MAC:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/vo/SokuAccess;->mac:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/vo/SokuAccess;->guid:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/SokuAccess;->operator:Ljava/lang/String;

    .line 33
    const-string v0, "android"

    iput-object v0, p0, Lcom/youku/vo/SokuAccess;->os:Ljava/lang/String;

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/SokuAccess;->os_ver:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/tudou/android/Youku;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/vo/SokuAccess;->ver:Ljava/lang/String;

    return-void
.end method
