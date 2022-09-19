.class Lcom/tudou/ui/fragment/UploadingFragment$5;
.super Landroid/os/Handler;
.source "UploadingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/UploadingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadingFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadingFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 712
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 724
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    iput-boolean v2, v1, Lcom/youku/vo/UserBean;->isCheckedSucess:Z

    .line 725
    const-string v1, "TAG_TUDOU"

    const-string v2, "checked count lost===="

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1500(Lcom/tudou/ui/fragment/UploadingFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1600(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 730
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1700(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1, v4}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1802(Lcom/tudou/ui/fragment/UploadingFragment;Z)Z

    .line 733
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 734
    return-void

    .line 714
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 715
    .local v0, "obj":Ljava/lang/String;
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1400(Lcom/tudou/ui/fragment/UploadingFragment;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    iput-boolean v4, v1, Lcom/youku/vo/UserBean;->isCheckedSucess:Z

    .line 717
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checked count sucess===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_1
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    iput-boolean v2, v1, Lcom/youku/vo/UserBean;->isCheckedSucess:Z

    .line 720
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checked count lost===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
    .end packed-switch
.end method
