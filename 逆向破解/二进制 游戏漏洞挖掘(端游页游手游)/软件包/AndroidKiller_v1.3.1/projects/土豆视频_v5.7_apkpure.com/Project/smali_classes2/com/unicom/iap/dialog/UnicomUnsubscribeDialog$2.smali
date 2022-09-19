.class Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$2;
.super Ljava/lang/Object;
.source "UnicomUnsubscribeDialog.java"

# interfaces
.implements Lcom/unicom/iap/dataengine/ServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->queryProductInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

.field private final synthetic val$requestMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$2;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    iput-object p2, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$2;->val$requestMap:Ljava/util/Map;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
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
    .line 103
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    const-string v3, "products"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 105
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 107
    const-string v3, "products"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/unicom/iap/dataengine/ServerEngine;->decodeCmd(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 109
    .local v1, "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$2;->val$requestMap:Ljava/util/Map;

    const-string v4, "type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "type":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const-string v3, "ordertips"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->orderMonthInfo:Ljava/lang/String;

    .line 113
    const-string v3, "cancletips"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 112
    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->orderCancletips:Ljava/lang/String;

    .line 114
    const-string v3, "busirange"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->busirange:Ljava/lang/String;

    .line 115
    const-string v3, "busirules"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->termsOfService:Ljava/lang/String;

    .line 124
    :goto_0
    const-string v3, "cancletips"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    .end local v1    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "type":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$2;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    iget-object v3, v3, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void

    .line 120
    .restart local v1    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "type":Ljava/lang/String;
    :cond_0
    const-string v3, "cancletips"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->orderCancletips:Ljava/lang/String;

    .line 121
    const-string v3, "busirange"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->busirange:Ljava/lang/String;

    .line 122
    const-string v3, "busirules"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/unicom/iap/sdk/WoVideoSDK;->termsOfService:Ljava/lang/String;

    goto :goto_0

    .line 126
    .end local v1    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x4

    iput v3, v0, Landroid/os/Message;->what:I

    .line 127
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method
