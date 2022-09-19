.class Lcom/unicom/iap/sdk/WoVideoSDKLogic$10;
.super Ljava/lang/Object;
.source "WoVideoSDKLogic.java"

# interfaces
.implements Lcom/unicom/iap/dataengine/ServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/sdk/WoVideoSDKLogic;->getTermsOfService(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;


# direct methods
.method constructor <init>(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$10;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "result"    # Z
    .param p2, "resultCode"    # Ljava/lang/String;
    .param p3, "errorInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v8, 0x8

    .line 758
    :try_start_0
    const-string v0, "products"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/dataengine/ServerEngine;->decodeCmd(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 759
    .local v7, "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 761
    const-string v0, "ordertips"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/unicom/iap/sdk/WoVideoSDK;->orderMonthInfo:Ljava/lang/String;

    .line 762
    const-string v0, "cancletips"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/unicom/iap/sdk/WoVideoSDK;->orderCancletips:Ljava/lang/String;

    .line 763
    const-string v0, "busirange"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/unicom/iap/sdk/WoVideoSDK;->busirange:Ljava/lang/String;

    .line 764
    const-string v0, "busirules"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/unicom/iap/sdk/WoVideoSDK;->termsOfService:Ljava/lang/String;

    .line 765
    iget-object v0, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$10;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    sget-object v4, Lcom/unicom/iap/sdk/WoVideoSDK;->termsOfService:Ljava/lang/String;

    const/16 v5, 0x8

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 773
    .end local v7    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 768
    .restart local v7    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$10;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    sget-object v4, Lcom/unicom/iap/sdk/WoVideoSDK;->termsOfService:Ljava/lang/String;

    const/16 v5, 0x8

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 770
    .end local v7    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 771
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$10;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    const/4 v1, 0x0

    const-string v2, "3333"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5f02\u5e38\uff01"

    const/4 v4, 0x0

    move v5, v8

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method
