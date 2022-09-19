.class public Lcom/unicom/iap/sdk/WoVideoSDK;
.super Ljava/lang/Object;
.source "WoVideoSDK.java"


# static fields
.field public static busirange:Ljava/lang/String;

.field public static orderCancletips:Ljava/lang/String;

.field public static orderConentInfo:Ljava/lang/String;

.field public static orderMonthInfo:Ljava/lang/String;

.field public static termsOfService:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/unicom/iap/sdk/WoVideoSDK;->orderMonthInfo:Ljava/lang/String;

    .line 21
    sput-object v0, Lcom/unicom/iap/sdk/WoVideoSDK;->orderConentInfo:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/unicom/iap/sdk/WoVideoSDK;->orderCancletips:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/unicom/iap/sdk/WoVideoSDK;->busirange:Ljava/lang/String;

    .line 27
    sput-object v0, Lcom/unicom/iap/sdk/WoVideoSDK;->termsOfService:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->clear(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public static getContentOrderInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->getContentOrderInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisPlayPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getDisplayPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessages(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getMessages(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMonthOrderInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-static {p0}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->getMonthOrderInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotice(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getNotice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    invoke-static {p0}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadFileUrlWoVideoSDK(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "paraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->getUploadFileUrlWoVideoSDK(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v6

    .line 245
    .local v6, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    const-string v2, "3333"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5f02\u5e38\uff01"

    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static identifyWoVideoSDK(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "paraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->identifyWoVideoSDK(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v6

    .line 75
    .local v6, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    const-string v2, "3333"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5f02\u5e38\uff01"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static queryUserInfo(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->queryUserInfo(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 60
    return-void
.end method

.method public static registerSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "appid"    # Ljava/lang/String;
    .param p1, "cpid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "appversion"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "callBack"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 46
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->registerSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v6

    .line 48
    .local v6, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    const-string v2, "3333"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5f02\u5e38\uff01"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p5

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static showOrderDialog(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "paraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->showOrderDialog(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 90
    return-void
.end method

.method public static showSmsNumberDialog(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->showSmsNumberDialog(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 101
    return-void
.end method

.method public static showUnssbscribeDialog(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->showUnssbscribeDialog(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 112
    return-void
.end method

.method public static sysBusirange(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 0
    .param p0, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 175
    invoke-static {p0}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->sysBusirange(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 176
    return-void
.end method

.method public static sysGetOrderShip(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 202
    :try_start_0
    invoke-static {p0, p1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->sysGetOrderShip(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v6

    .line 204
    .local v6, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    const-string v2, "3333"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5f02\u5e38\uff01"

    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static sysGetOrderShipFromService(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 215
    :try_start_0
    invoke-static {p0, p1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->sysGetOrderShipFromService(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v6

    .line 217
    .local v6, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    const-string v2, "3333"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5f02\u5e38\uff01"

    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static sysGetOrderShipFromServiceForYouKu(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userPhone"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 228
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->sysGetOrderShipFromServiceForYouKu(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v6

    .line 230
    .local v6, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    const-string v2, "3333"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5f02\u5e38\uff01"

    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static sysTermsOfService(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 0
    .param p0, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->getTermsOfService(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 167
    return-void
.end method
