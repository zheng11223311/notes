.class Lcom/tudou/ui/fragment/ChannelSquareFragment$5;
.super Ljava/lang/Object;
.source "ChannelSquareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ChannelSquareFragment;->generatTagBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ChannelSquareFragment;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 278
    :goto_0
    return-void

    .line 266
    :cond_0
    const-string v1, "\u81ea\u9891\u9053\u5e7f\u573a\u6807\u7b7e\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/ChannelSquareActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u81ea\u9891\u9053\u5e7f\u573a\u6807\u7b7e\u70b9\u51fb"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$600(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    const v3, 0x7f0e00a3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;->val$tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$700(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    const v3, 0x7f0e00b4

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 274
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;->val$tv:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$502(Lcom/tudou/ui/fragment/ChannelSquareFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "0"

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 276
    .local v0, "index":I
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$800(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 277
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->access$000(Lcom/tudou/ui/fragment/ChannelSquareFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_0

    .line 275
    .end local v0    # "index":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
