.class Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;
.super Ljava/lang/Object;
.source "UnicomSmsNumberDialog.java"

# interfaces
.implements Lcom/unicom/iap/dataengine/ServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->smsGetPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;


# direct methods
.method constructor <init>(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
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

    move-result-object v7

    .line 173
    .local v7, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    .line 175
    const/4 v0, 0x3

    iput v0, v7, Landroid/os/Message;->what:I

    .line 176
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    iget-object v0, v0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    const-string v0, "mob"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/dataengine/ServerEngine;->decodeCmd(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 178
    .local v6, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$1(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/unicom/iap/utils/DataManager;->saveMob(Ljava/util/Map;Landroid/content/Context;)V

    .line 179
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    invoke-virtual {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/iap/utils/DataManager;->saveImsi(Landroid/content/Context;)V

    .line 180
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    invoke-static {v1}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$1(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    invoke-static {v2}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$2(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$3(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 190
    .end local v6    # "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x4

    iput v0, v7, Landroid/os/Message;->what:I

    .line 184
    iput-object p3, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    iget-object v0, v0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$2(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 187
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    invoke-virtual {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->dismiss()V

    goto :goto_0
.end method
