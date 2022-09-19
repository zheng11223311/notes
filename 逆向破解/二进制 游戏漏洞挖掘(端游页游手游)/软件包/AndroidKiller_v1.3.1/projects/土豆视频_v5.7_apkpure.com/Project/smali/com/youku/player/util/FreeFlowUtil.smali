.class public Lcom/youku/player/util/FreeFlowUtil;
.super Ljava/lang/Object;
.source "FreeFlowUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;
    }
.end annotation


# static fields
.field private static final CAN_ORDER:I = 0x1

.field private static final CURRENT_AREA_NOT_OPEN:I = -0x2

.field private static final IP_NUMBER_NOT_MATCH:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHttpRequest:Lcom/youku/player/network/HttpRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/LogTag;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/youku/player/util/FreeFlowUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/util/FreeFlowUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/youku/player/util/FreeFlowUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getMobileDeviceNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 75
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 77
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 78
    .local v0, "NativePhoneNumber":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 79
    sget-object v4, Lcom/youku/player/util/FreeFlowUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====\u672c\u673a\u53f7\u7801===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v4, Lcom/youku/player/util/FreeFlowUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====\u672c\u673a\u53f7\u7801=sim==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "cellInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 83
    sget-object v4, Lcom/youku/player/util/FreeFlowUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====\u672c\u673a\u53f7\u7801==cellInfos=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-object v0
.end method

.method public getUnicomFreeFlowState(Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;)V
    .locals 4
    .param p1, "mCallBackFreeFlow"    # Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;

    .prologue
    const/4 v3, 0x1

    .line 36
    const-class v0, Lcom/youku/player/network/IHttpRequest;

    invoke-static {v0, v3}, Lcom/youku/player/network/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/network/HttpRequestManager;

    iput-object v0, p0, Lcom/youku/player/util/FreeFlowUtil;->mHttpRequest:Lcom/youku/player/network/HttpRequestManager;

    .line 37
    iget-object v0, p0, Lcom/youku/player/util/FreeFlowUtil;->mHttpRequest:Lcom/youku/player/network/HttpRequestManager;

    new-instance v1, Lcom/youku/player/network/HttpIntent;

    invoke-static {}, Lcom/youku/player/util/URLContainer;->getUnicomFreeFlowUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/youku/player/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Lcom/youku/player/util/FreeFlowUtil$1;

    invoke-direct {v2, p0, p1}, Lcom/youku/player/util/FreeFlowUtil$1;-><init>(Lcom/youku/player/util/FreeFlowUtil;Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/network/HttpRequestManager;->request(Lcom/youku/player/network/HttpIntent;Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 69
    return-void
.end method
