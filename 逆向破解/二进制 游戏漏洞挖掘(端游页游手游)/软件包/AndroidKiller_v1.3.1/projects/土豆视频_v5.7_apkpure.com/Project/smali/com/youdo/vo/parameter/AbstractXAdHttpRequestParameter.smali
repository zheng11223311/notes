.class public abstract Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final BASE_URL:Ljava/lang/String;

.field public final NATIVE_CONTENT_NATIVE_AD:Ljava/lang/String;

.field public final NATIVE_CONTENT_ONLINE_AD:Ljava/lang/String;

.field public final NEWSECRET:Ljava/lang/String;

.field public final ONLINE_CONTENT_ONLINE_AD:Ljava/lang/String;

.field public ac:Ljava/lang/String;

.field public final adSDKVersion:Ljava/lang/String;

.field public adext:Ljava/lang/String;

.field public aid:Ljava/lang/String;

.field public atm:Ljava/lang/String;

.field public avs:Ljava/lang/String;

.field public aw:Ljava/lang/String;

.field public bd:Ljava/lang/String;

.field public bt:Ljava/lang/String;

.field public deviceType:Lorg/openad/constants/IOpenAdContants$DeviceType;

.field public device_pixel_ration_millis:I

.field public dq:Ljava/lang/String;

.field public dvh:I

.field public dvw:I

.field public fu:I

.field public guid:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public isp:Ljava/lang/String;

.field protected mAdManagerContext:Lcom/youdo/XAdManagerContext;

.field private mContext:Landroid/content/Context;

.field public mOpenUDID:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public mdl:Ljava/lang/String;

.field public net:I

.field public noqt:I

.field public operator:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public osv:Ljava/lang/String;

.field public ouid:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public paid:I

.field public partnernid:Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public player_type:Ljava/lang/String;

.field public rst:Ljava/lang/String;

.field public sessionid:Ljava/lang/String;

.field public site:Ljava/lang/String;

.field private slotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

.field public vc:Ljava/lang/String;

.field public videoQuality:Lorg/openad/constants/IOpenAdContants$VideoQuality;

.field public vip:Ljava/lang/String;

.field public vs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youdo/XAdManagerContext;Landroid/content/Context;Lorg/openad/constants/IOpenAdContants$AdSlotType;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "master"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->adSDKVersion:Ljava/lang/String;

    const-string v0, "631l1i1x3fv5vs2dxlj5v8x81jqfs2om"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->NEWSECRET:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->site:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->fu:I

    iput v1, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->paid:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->vip:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->ac:Ljava/lang/String;

    const-string v0, "Android"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->os:Ljava/lang/String;

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->vs:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lorg/openad/common/util/Utils;->getTextEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->bd:Ljava/lang/String;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->slotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    const-string v0, "mdevice"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->player_type:Ljava/lang/String;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoQuality;->HD:Lorg/openad/constants/IOpenAdContants$VideoQuality;

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->videoQuality:Lorg/openad/constants/IOpenAdContants$VideoQuality;

    const-string v0, ""

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->ip:Ljava/lang/String;

    const-string v0, "flv"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->rst:Ljava/lang/String;

    const-string v0, "mp4"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->dq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->avs:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->atm:Ljava/lang/String;

    const-string v0, "TODO"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->pid:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->ONLINE_CONTENT_ONLINE_AD:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->NATIVE_CONTENT_ONLINE_AD:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->NATIVE_CONTENT_NATIVE_AD:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->vc:Ljava/lang/String;

    iput v1, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->noqt:I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lorg/openad/common/util/Utils;->getTextEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->mdl:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lorg/openad/common/util/Utils;->getTextEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->osv:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->partnernid:Ljava/lang/String;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$DeviceType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$DeviceType;

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->deviceType:Lorg/openad/constants/IOpenAdContants$DeviceType;

    iput-object p1, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iput-object p2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->setAdSlotType(Lorg/openad/constants/IOpenAdContants$AdSlotType;)V

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PREROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-ne p3, v0, :cond_0

    const-string v0, "http://mf.atm.youku.com/mf"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->BASE_URL:Ljava/lang/String;

    :goto_0
    invoke-static {p2}, Lorg/openad/common/util/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "pad"

    :goto_1
    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->bt:Ljava/lang/String;

    invoke-static {p2}, Lorg/openad/common/util/Utils;->getNetworkTypeCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->net:I

    iget-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->mScreenSize:Lorg/openad/gemo/CGSize;

    invoke-virtual {v0}, Lorg/openad/gemo/CGSize;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->dvw:I

    invoke-virtual {v0}, Lorg/openad/gemo/CGSize;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->dvh:I

    iget-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget v0, v0, Lcom/youdo/XAdManagerContext;->mScreenDensity:I

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->device_pixel_ration_millis:I

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->aid:Ljava/lang/String;

    invoke-static {p2}, Lorg/openad/common/util/Utils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->imei:Ljava/lang/String;

    invoke-static {p2}, Lorg/openad/common/util/Utils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->mac:Ljava/lang/String;

    invoke-static {p2}, Lorg/openad/common/util/Utils;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->guid:Ljava/lang/String;

    invoke-static {p2}, Lorg/openad/common/util/Utils;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->isp:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PAUSEROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-ne p3, v0, :cond_1

    const-string v0, "http://mp.atm.youku.com/mp"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->BASE_URL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->DISPLAY:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-ne p3, v0, :cond_2

    const-string v0, "http://mi.atm.youku.com/mi"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->BASE_URL:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "http://mf.atm.youku.com/mf"

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->BASE_URL:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "phone"

    goto :goto_1
.end method

.method private setAdSlotType(Lorg/openad/constants/IOpenAdContants$AdSlotType;)V
    .locals 1

    iput-object p1, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->slotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->slotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    invoke-virtual {v0}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->getStringCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->p:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->slotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->toObject()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->BASE_URL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/openad/common/util/URIUtil;->addParameters(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInVideoAdSlot()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->slotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PREROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->slotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdSlotType;->MIDROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->slotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdSlotType;->POSTROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->slotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PAUSEROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->slotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdSlotType;->OVERLAY:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toObject()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dvw"

    iget v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->dvw:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dvh"

    iget v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->dvh:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dprm"

    iget v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->device_pixel_ration_millis:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aid"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->aid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bt"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->bt:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bd"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->bd:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "net"

    iget v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->net:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "guid"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->guid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "im"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->imei:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mac"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->mac:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isp"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->isp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aw"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "vc"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "p"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->slotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    invoke-virtual {v2}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->getStringCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "vip"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ac"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->os:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "vs"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->vs:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "rst"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->rst:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dq"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->dq:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "site"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->site:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ouid"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->mOpenUDID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mdl"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->mdl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osv"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->osv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pid"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->pid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "avs"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->avs:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ip"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->ip:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "wintype"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->player_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "paid"

    iget v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->paid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "noqt"

    iget v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->noqt:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "partnernid"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->partnernid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fu"

    iget v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->fu:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "atm"

    iget-object v2, p0, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->atm:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
