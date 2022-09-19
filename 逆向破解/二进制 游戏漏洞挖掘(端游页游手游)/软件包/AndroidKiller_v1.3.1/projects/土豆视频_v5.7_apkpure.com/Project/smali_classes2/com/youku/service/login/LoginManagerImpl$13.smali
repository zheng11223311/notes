.class Lcom/youku/service/login/LoginManagerImpl$13;
.super Landroid/os/Handler;
.source "LoginManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/login/LoginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/service/login/LoginManagerImpl;


# direct methods
.method constructor <init>(Lcom/youku/service/login/LoginManagerImpl;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/youku/service/login/LoginManagerImpl$13;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 696
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.what======"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "===msg.obj======"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 708
    iget-object v1, p0, Lcom/youku/service/login/LoginManagerImpl$13;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->access$1000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/service/login/LoginManagerImpl;->access$1100(Lcom/youku/service/login/LoginManagerImpl;Ljava/lang/String;)V

    .line 711
    :goto_0
    iget-object v1, p0, Lcom/youku/service/login/LoginManagerImpl$13;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/service/login/LoginManagerImpl;->access$302(Lcom/youku/service/login/LoginManagerImpl;Lcom/youku/service/login/ILogin$ICallBack;)Lcom/youku/service/login/ILogin$ICallBack;

    .line 712
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 713
    return-void

    .line 700
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 701
    .local v0, "sObj":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 702
    iget-object v1, p0, Lcom/youku/service/login/LoginManagerImpl$13;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->access$1000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/service/login/LoginManagerImpl;->access$1100(Lcom/youku/service/login/LoginManagerImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/youku/service/login/LoginManagerImpl$13;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-static {v1, v0}, Lcom/youku/service/login/LoginManagerImpl;->access$1200(Lcom/youku/service/login/LoginManagerImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
