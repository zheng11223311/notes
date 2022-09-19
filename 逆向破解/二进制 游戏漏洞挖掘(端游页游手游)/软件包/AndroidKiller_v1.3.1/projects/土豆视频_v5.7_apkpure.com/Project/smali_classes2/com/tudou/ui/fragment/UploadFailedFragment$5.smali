.class Lcom/tudou/ui/fragment/UploadFailedFragment$5;
.super Landroid/os/Handler;
.source "UploadFailedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/UploadFailedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadFailedFragment;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x7f0d03d1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$200(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$302(Lcom/tudou/ui/fragment/UploadFailedFragment;Z)Z

    .line 266
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$100(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 237
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 251
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$600(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$600(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->getPageNo()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 252
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$600(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->dePageNo()V

    .line 254
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 255
    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 259
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1, v3}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$700(Lcom/tudou/ui/fragment/UploadFailedFragment;Z)V

    .line 262
    :goto_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$302(Lcom/tudou/ui/fragment/UploadFailedFragment;Z)Z

    .line 265
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 239
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 240
    .local v0, "obj":Ljava/lang/String;
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$400(Lcom/tudou/ui/fragment/UploadFailedFragment;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$500(Lcom/tudou/ui/fragment/UploadFailedFragment;)V

    .line 248
    :goto_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$700(Lcom/tudou/ui/fragment/UploadFailedFragment;Z)V

    goto :goto_2

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$600(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$600(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->getPageNo()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 244
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$600(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->dePageNo()V

    .line 246
    :cond_3
    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_3

    .line 257
    .end local v0    # "obj":Ljava/lang/String;
    :cond_4
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_1

    .line 237
    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
    .end packed-switch
.end method
