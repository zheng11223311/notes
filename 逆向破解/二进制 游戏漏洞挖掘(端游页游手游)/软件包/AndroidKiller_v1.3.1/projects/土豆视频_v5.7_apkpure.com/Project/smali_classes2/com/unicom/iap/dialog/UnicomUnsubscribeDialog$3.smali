.class Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$3;
.super Ljava/lang/Object;
.source "UnicomUnsubscribeDialog.java"

# interfaces
.implements Lcom/unicom/iap/dataengine/ServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->unsubscribe(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;


# direct methods
.method constructor <init>(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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
    .line 188
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 190
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    const/4 p1, 0x1

    .line 192
    const-string p2, "2004"

    .line 195
    :cond_1
    if-eqz p1, :cond_2

    .line 197
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 198
    const-string v1, "\u9000\u8ba2\u6210\u529f\uff0c\u5c06\u5728\u4e0b\u6708\u5931\u6548\uff0c\u672c\u6708\u60a8\u53ef\u4ee5\u7ee7\u7eed\u4f7f\u7528\u672c\u4ea7\u54c1"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    iget-object v1, v1, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    return-void

    .line 202
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
