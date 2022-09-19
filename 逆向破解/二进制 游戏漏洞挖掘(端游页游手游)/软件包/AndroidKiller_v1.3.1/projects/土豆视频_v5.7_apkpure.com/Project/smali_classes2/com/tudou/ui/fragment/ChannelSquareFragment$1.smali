.class Lcom/tudou/ui/fragment/ChannelSquareFragment$1;
.super Ljava/lang/Object;
.source "ChannelSquareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ChannelSquareFragment;->setNoContentTips(Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;)V
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
    .line 96
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$1;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    .line 101
    .local v0, "tips":Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;
    sget-object v1, Lcom/tudou/ui/fragment/ChannelSquareFragment$7;->$SwitchMap$com$tudou$ui$fragment$ChannelSquareFragment$NoContentTips:[I

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 103
    :pswitch_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$1;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$000(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$1;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$100(Lcom/tudou/ui/fragment/ChannelSquareFragment;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
