.class Lcom/unicom/iap/sdk/WoVideoSDKLogic$5;
.super Ljava/lang/Object;
.source "WoVideoSDKLogic.java"

# interfaces
.implements Lcom/unicom/iap/dataengine/ServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/sdk/WoVideoSDKLogic;->identifyWoVideoSDK(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
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
    iput-object p1, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$5;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
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
    .line 320
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 322
    const-string v0, "playurl"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/dataengine/ServerEngine;->decodeCmdToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "userInfo":Ljava/lang/String;
    iget-object v0, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$5;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    const/4 v1, 0x1

    const-string v2, "2002"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u83b7\u53d6\u514d\u6d41\u5730\u5740\u6210\u529f!"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 329
    .end local v4    # "userInfo":Ljava/lang/String;
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v5, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$5;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v5 .. v10}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method
