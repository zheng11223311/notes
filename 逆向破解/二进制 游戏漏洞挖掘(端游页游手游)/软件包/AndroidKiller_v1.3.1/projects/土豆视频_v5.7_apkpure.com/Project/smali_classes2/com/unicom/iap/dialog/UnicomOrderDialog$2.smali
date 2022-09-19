.class Lcom/unicom/iap/dialog/UnicomOrderDialog$2;
.super Ljava/lang/Object;
.source "UnicomOrderDialog.java"

# interfaces
.implements Lcom/unicom/iap/dataengine/ServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/dialog/UnicomOrderDialog;->queryProductInfo(Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

.field private final synthetic val$requestMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/unicom/iap/dialog/UnicomOrderDialog;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$2;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    iput-object p2, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$2;->val$requestMap:Ljava/util/Map;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
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
    .line 172
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    const-string v3, "products"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 174
    const-string v3, "products"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/unicom/iap/dataengine/ServerEngine;->decodeCmd(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 176
    .local v1, "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->what:I

    .line 177
    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$2;->val$requestMap:Ljava/util/Map;

    const-string v4, "type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "type":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    const-string v3, "ordertips"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->orderMonthInfo:Ljava/lang/String;

    .line 182
    const-string v3, "cancletips"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->orderCancletips:Ljava/lang/String;

    .line 183
    const-string v3, "busirange"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->busirange:Ljava/lang/String;

    .line 185
    const-string v3, "busirules"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->termsOfService:Ljava/lang/String;

    .line 193
    :goto_0
    const-string v3, "ordertips"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$2;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-virtual {v3}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "queryOrders"

    iget-object v5, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$2;->val$requestMap:Ljava/util/Map;

    invoke-static {v3, v4, v5, v1}, Lcom/unicom/iap/utils/DataManager;->saveProductsInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 201
    .end local v1    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "type":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$2;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    iget-object v3, v3, Lcom/unicom/iap/dialog/UnicomOrderDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    return-void

    .line 188
    .restart local v1    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "type":Ljava/lang/String;
    :cond_0
    const-string v3, "cancletips"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->orderCancletips:Ljava/lang/String;

    .line 189
    const-string v3, "busirange"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->busirange:Ljava/lang/String;

    .line 191
    const-string v3, "busirules"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->termsOfService:Ljava/lang/String;

    goto :goto_0

    .line 198
    .end local v1    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    .line 199
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method
