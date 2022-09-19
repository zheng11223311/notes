.class Lcom/unicom/iap/sdk/WoVideoSDKLogic$1;
.super Ljava/lang/Object;
.source "WoVideoSDKLogic.java"

# interfaces
.implements Lcom/unicom/iap/dataengine/ServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/sdk/WoVideoSDKLogic;->registerSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callBack:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$1;->val$callBack:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
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
    .line 86
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 89
    const-string v0, "data"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 90
    .local v9, "reqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "key"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/unicom/iap/utils/DataManager;->jiesuoKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unicom/iap/utils/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "decKey":Ljava/lang/String;
    sput-object v6, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    .line 93
    const-string v0, "messages"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unicom/iap/utils/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "message":Ljava/lang/String;
    const-string v0, "notice"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unicom/iap/utils/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "notice":Ljava/lang/String;
    iget-object v0, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/unicom/iap/utils/DataManager;->saveCpKey(Ljava/lang/String;Landroid/content/Context;)V

    .line 96
    iget-object v0, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$1;->val$context:Landroid/content/Context;

    invoke-static {v8, v7, v0}, Lcom/unicom/iap/utils/DataManager;->saveNoticeAndMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$1;->val$callBack:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    invoke-static {v0, v1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->netGetNumber(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 103
    .end local v6    # "decKey":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "notice":Ljava/lang/String;
    .end local v9    # "reqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$1;->val$callBack:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method
