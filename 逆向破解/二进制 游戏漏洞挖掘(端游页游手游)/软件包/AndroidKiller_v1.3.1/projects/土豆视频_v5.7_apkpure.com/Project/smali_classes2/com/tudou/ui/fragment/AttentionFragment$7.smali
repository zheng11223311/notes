.class Lcom/tudou/ui/fragment/AttentionFragment$7;
.super Lcom/tudou/service/attention/IAttention$GetListCallBack;
.source "AttentionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AttentionFragment;->excuegetAttentionList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AttentionFragment;

.field final synthetic val$pg:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AttentionFragment;I)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/tudou/ui/fragment/AttentionFragment$7;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iput p2, p0, Lcom/tudou/ui/fragment/AttentionFragment$7;->val$pg:I

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$GetListCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 426
    const-string v1, "\u8ba2\u9605\u5217\u8868\u52a0\u8f7d\u5931\u8d25"

    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$7;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1500(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8ba2\u9605\u5217\u8868\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$7;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 429
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 430
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xfa1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 431
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 432
    iget v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$7;->val$pg:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 433
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$7;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onSucess(Lcom/youku/vo/Podcast;)V
    .locals 2
    .param p1, "podcast"    # Lcom/youku/vo/Podcast;

    .prologue
    .line 415
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$7;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 416
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 417
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xfa0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 418
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 419
    iget v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$7;->val$pg:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 420
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$7;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 422
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
