.class Lcom/unicom/iap/dialog/UnicomOrderDialog$3;
.super Ljava/lang/Object;
.source "UnicomOrderDialog.java"

# interfaces
.implements Lcom/unicom/iap/dataengine/ServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/dialog/UnicomOrderDialog;->orderProdcut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;


# direct methods
.method constructor <init>(Lcom/unicom/iap/dialog/UnicomOrderDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 267
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    :cond_0
    const/4 p1, 0x1

    .line 269
    const-string p2, "2005"

    .line 272
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 273
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    .line 274
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 275
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    :goto_0
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    iget-object v1, v1, Lcom/unicom/iap/dialog/UnicomOrderDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 283
    return-void

    .line 277
    :cond_2
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 278
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$3;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-static {v1, p2}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->access$4(Lcom/unicom/iap/dialog/UnicomOrderDialog;Ljava/lang/String;)V

    .line 279
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
