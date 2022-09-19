.class Lcom/unicom/iap/sdk/WoVideoSDKLogic$4;
.super Ljava/lang/Object;
.source "WoVideoSDKLogic.java"

# interfaces
.implements Lcom/unicom/iap/dataengine/ServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/sdk/WoVideoSDKLogic;->queryUserInfo(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
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
    iput-object p1, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$4;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .line 235
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
    .line 240
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 242
    const-string v0, "userinfo"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/dataengine/ServerEngine;->decodeCmdToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "userInfo":Ljava/lang/String;
    iget-object v0, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$4;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    const/4 v1, 0x1

    const-string v2, "2001"

    const-string v3, "\u67e5\u8be2\u7528\u6237\u4fe1\u606f\u6210\u529f!"

    const/4 v5, 0x5

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 249
    .end local v4    # "userInfo":Ljava/lang/String;
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v5, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$4;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v5 .. v10}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method
