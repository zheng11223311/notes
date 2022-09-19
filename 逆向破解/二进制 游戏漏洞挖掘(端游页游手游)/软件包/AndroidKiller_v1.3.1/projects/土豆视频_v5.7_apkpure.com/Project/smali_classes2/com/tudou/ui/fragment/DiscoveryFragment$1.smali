.class Lcom/tudou/ui/fragment/DiscoveryFragment$1;
.super Landroid/os/Handler;
.source "DiscoveryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/DiscoveryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DiscoveryFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$1;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$1;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->access$100(Lcom/tudou/ui/fragment/DiscoveryFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 146
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$1;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->access$100(Lcom/tudou/ui/fragment/DiscoveryFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 150
    :goto_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 151
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$1;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->access$000(Lcom/tudou/ui/fragment/DiscoveryFragment;)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
