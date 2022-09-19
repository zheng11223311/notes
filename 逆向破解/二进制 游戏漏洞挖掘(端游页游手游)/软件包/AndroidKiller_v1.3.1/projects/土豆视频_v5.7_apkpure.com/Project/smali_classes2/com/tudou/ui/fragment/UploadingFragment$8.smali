.class Lcom/tudou/ui/fragment/UploadingFragment$8;
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
    .line 970
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x7f0d03d1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 974
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 990
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2000(Lcom/tudou/ui/fragment/UploadingFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->getPageNo()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 991
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2000(Lcom/tudou/ui/fragment/UploadingFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->dePageNo()V

    .line 994
    :cond_0
    const-string v1, "\u4e0a\u4f20\u9875\u5df2\u4e0a\u4f20\u89c6\u9891\u52a0\u8f7d\u5931\u8d25"

    const-string v2, "\u4e0a\u4f20\u9875\u5df2\u4e0a\u4f20\u89c6\u9891\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/tudou/ui/activity/UploadManagerActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-static {v5}, Lcom/youku/util/Util;->showTips(I)V

    .line 999
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2000(Lcom/tudou/ui/fragment/UploadingFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->getPageNo()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 1000
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1600(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 1001
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1, v4}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2502(Lcom/tudou/ui/fragment/UploadingFragment;Z)Z

    .line 1003
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1700(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 1010
    :cond_2
    :goto_1
    const-string v1, "TAG_TUDOU"

    const-string v2, "\u5237\u65b0\u7ed3\u675f"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1, v3}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1502(Lcom/tudou/ui/fragment/UploadingFragment;Z)Z

    .line 1012
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1013
    return-void

    .line 976
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 977
    .local v0, "obj":Ljava/lang/String;
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2400(Lcom/tudou/ui/fragment/UploadingFragment;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 982
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2000(Lcom/tudou/ui/fragment/UploadingFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->getPageNo()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 983
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2000(Lcom/tudou/ui/fragment/UploadingFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->dePageNo()V

    .line 986
    :cond_3
    invoke-static {v5}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 1004
    .end local v0    # "obj":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1800(Lcom/tudou/ui/fragment/UploadingFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1005
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1600(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 1006
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1, v4}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2502(Lcom/tudou/ui/fragment/UploadingFragment;Z)Z

    .line 1008
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1700(Lcom/tudou/ui/fragment/UploadingFragment;)V

    goto :goto_1

    .line 974
    nop

    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
    .end packed-switch
.end method
