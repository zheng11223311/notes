.class Lcom/tudou/detail/fragment/VideoCacheFragment$1;
.super Landroid/os/Handler;
.source "VideoCacheFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/fragment/VideoCacheFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tudou/detail/vo/VideoList;

    invoke-static {v1, v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$002(Lcom/tudou/detail/fragment/VideoCacheFragment;Lcom/tudou/detail/vo/VideoList;)Lcom/tudou/detail/vo/VideoList;

    .line 112
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tudou/detail/vo/VideoList;

    invoke-static {v1, v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$100(Lcom/tudou/detail/fragment/VideoCacheFragment;Lcom/tudou/detail/vo/VideoList;)V

    .line 113
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v1, v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->updateUI(Lcom/tudou/detail/vo/VideoList;)V

    .line 114
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setBtnCacheManagerText()V

    .line 115
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$200(Lcom/tudou/detail/fragment/VideoCacheFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$200(Lcom/tudou/detail/fragment/VideoCacheFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setCurrentVid(Ljava/lang/String;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v0, v2, v2}, Lcom/tudou/detail/fragment/VideoCacheFragment;->showLoading(ZZ)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->showLoading(ZZ)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
