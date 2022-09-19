.class Lcom/tudou/ui/fragment/ChannelSquareFragment$2;
.super Landroid/os/Handler;
.source "ChannelSquareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ChannelSquareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$200(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V

    .line 126
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 130
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    sget-object v1, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->FAILED_CLASSFIES:Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->setNoContentTips(Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
