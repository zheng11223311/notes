.class Lcom/tudou/adapter/SubscribeAdapter$1;
.super Landroid/os/Handler;
.source "SubscribeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/SubscribeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/SubscribeAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$1;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    return-void

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$1;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$000(Lcom/tudou/adapter/SubscribeAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->initData()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
