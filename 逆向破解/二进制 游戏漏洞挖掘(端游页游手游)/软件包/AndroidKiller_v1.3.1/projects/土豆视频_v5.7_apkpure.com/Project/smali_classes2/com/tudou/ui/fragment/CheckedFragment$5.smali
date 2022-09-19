.class Lcom/tudou/ui/fragment/CheckedFragment$5;
.super Landroid/os/Handler;
.source "CheckedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CheckedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CheckedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CheckedFragment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/tudou/ui/fragment/CheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

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

    .line 212
    iget-object v1, p0, Lcom/tudou/ui/fragment/CheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CheckedFragment;->access$000(Lcom/tudou/ui/fragment/CheckedFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/tudou/ui/fragment/CheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/CheckedFragment;->access$102(Lcom/tudou/ui/fragment/CheckedFragment;Z)Z

    .line 240
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/CheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CheckedFragment;->access$200(Lcom/tudou/ui/fragment/CheckedFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 217
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 230
    iget-object v1, p0, Lcom/tudou/ui/fragment/CheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CheckedFragment;->access$500(Lcom/tudou/ui/fragment/CheckedFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->getPageNo()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 231
    iget-object v1, p0, Lcom/tudou/ui/fragment/CheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CheckedFragment;->access$500(Lcom/tudou/ui/fragment/CheckedFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->dePageNo()V

    .line 233
    :cond_1
    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 236
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/CheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/CheckedFragment;->access$102(Lcom/tudou/ui/fragment/CheckedFragment;Z)Z

    .line 237
    iget-object v1, p0, Lcom/tudou/ui/fragment/CheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CheckedFragment;->access$600(Lcom/tudou/ui/fragment/CheckedFragment;)V

    .line 239
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 219
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 220
    .local v0, "obj":Ljava/lang/String;
    iget-object v1, p0, Lcom/tudou/ui/fragment/CheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/CheckedFragment;->access$300(Lcom/tudou/ui/fragment/CheckedFragment;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/tudou/ui/fragment/CheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CheckedFragment;->access$400(Lcom/tudou/ui/fragment/CheckedFragment;)V

    goto :goto_1

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/CheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CheckedFragment;->access$500(Lcom/tudou/ui/fragment/CheckedFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->getPageNo()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 224
    iget-object v1, p0, Lcom/tudou/ui/fragment/CheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CheckedFragment;->access$500(Lcom/tudou/ui/fragment/CheckedFragment;)Lcom/youku/vo/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/Page;->dePageNo()V

    .line 226
    :cond_3
    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_1

    .line 217
    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
    .end packed-switch
.end method
