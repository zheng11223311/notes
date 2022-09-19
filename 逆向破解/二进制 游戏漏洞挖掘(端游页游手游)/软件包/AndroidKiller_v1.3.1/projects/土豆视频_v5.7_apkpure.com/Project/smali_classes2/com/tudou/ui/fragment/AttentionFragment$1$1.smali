.class Lcom/tudou/ui/fragment/AttentionFragment$1$1;
.super Lcom/tudou/service/attention/IAttention$GetListCallBack;
.source "AttentionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AttentionFragment$1;->onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/AttentionFragment$1;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AttentionFragment$1;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1$1;->this$1:Lcom/tudou/ui/fragment/AttentionFragment$1;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$GetListCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v1, "\u8ba2\u9605\u5217\u8868\u52a0\u8f7d\u5931\u8d25"

    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$1$1;->this$1:Lcom/tudou/ui/fragment/AttentionFragment$1;

    iget-object v2, v2, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AttentionFragment;->access$900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8ba2\u9605\u5217\u8868\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1$1;->this$1:Lcom/tudou/ui/fragment/AttentionFragment$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 178
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 179
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xfa1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 180
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 182
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1$1;->this$1:Lcom/tudou/ui/fragment/AttentionFragment$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onSucess(Lcom/youku/vo/Podcast;)V
    .locals 2
    .param p1, "podcast"    # Lcom/youku/vo/Podcast;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1$1;->this$1:Lcom/tudou/ui/fragment/AttentionFragment$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1$1;->this$1:Lcom/tudou/ui/fragment/AttentionFragment$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/AttentionAdapter;->clearDeleteList()V

    .line 165
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xfa0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 167
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 169
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1$1;->this$1:Lcom/tudou/ui/fragment/AttentionFragment$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
