.class public Lcom/alibaba/cchannel/core/config/MobileInfo;
.super Ljava/lang/Object;


# instance fields
.field public appId:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public deviceInfo:Lcom/alibaba/cchannel/core/config/a;

.field public location:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public mobile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/alibaba/cchannel/core/config/MobileInfo;
    .locals 4

    new-instance v1, Lcom/alibaba/cchannel/core/config/MobileInfo;

    invoke-direct {v1}, Lcom/alibaba/cchannel/core/config/MobileInfo;-><init>()V

    new-instance v2, Lcom/alibaba/cchannel/core/config/a;

    invoke-direct {v2}, Lcom/alibaba/cchannel/core/config/a;-><init>()V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/cchannel/core/config/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/cchannel/core/config/a;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/cchannel/core/config/MobileInfo;->deviceInfo:Lcom/alibaba/cchannel/core/config/a;

    invoke-static {p0}, Lcom/alibaba/cchannel/utils/SystemUtils;->getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/cchannel/core/config/MobileInfo;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/cchannel/core/config/MobileInfo;->mobile:Ljava/lang/String;

    return-object v1
.end method
