.class Lcom/youku/service/login/LoginManagerImpl$3;
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
    .line 165
    iput-object p1, p0, Lcom/youku/service/login/LoginManagerImpl$3;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 169
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg.what======"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg.obj======"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 172
    iget v2, p1, Landroid/os/Message;->what:I

    .line 173
    .local v2, "status":I
    packed-switch v2, :pswitch_data_0

    .line 186
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 187
    .local v0, "errorMes":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    const-string v0, "\u6ce8\u518c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl$3;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-static {v3}, Lcom/youku/service/login/LoginManagerImpl;->access$300(Lcom/youku/service/login/LoginManagerImpl;)Lcom/youku/service/login/ILogin$ICallBack;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 191
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl$3;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-static {v3}, Lcom/youku/service/login/LoginManagerImpl;->access$300(Lcom/youku/service/login/LoginManagerImpl;)Lcom/youku/service/login/ILogin$ICallBack;

    move-result-object v3

    invoke-interface {v3, v0, v6}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    .line 195
    .end local v0    # "errorMes":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl$3;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/youku/service/login/LoginManagerImpl;->access$302(Lcom/youku/service/login/LoginManagerImpl;Lcom/youku/service/login/ILogin$ICallBack;)Lcom/youku/service/login/ILogin$ICallBack;

    .line 196
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 197
    return-void

    .line 175
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 176
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, "jObj":Ljava/lang/String;
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl$3;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-static {v3, v1}, Lcom/youku/service/login/LoginManagerImpl;->access$400(Lcom/youku/service/login/LoginManagerImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v1    # "jObj":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl$3;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-static {v3}, Lcom/youku/service/login/LoginManagerImpl;->access$300(Lcom/youku/service/login/LoginManagerImpl;)Lcom/youku/service/login/ILogin$ICallBack;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 181
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl$3;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    invoke-static {v3}, Lcom/youku/service/login/LoginManagerImpl;->access$300(Lcom/youku/service/login/LoginManagerImpl;)Lcom/youku/service/login/ILogin$ICallBack;

    move-result-object v3

    const-string v4, "\u6ce8\u518c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-interface {v3, v4, v6}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
