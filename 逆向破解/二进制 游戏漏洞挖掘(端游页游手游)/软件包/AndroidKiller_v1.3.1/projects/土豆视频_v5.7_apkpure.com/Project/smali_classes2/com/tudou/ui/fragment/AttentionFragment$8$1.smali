.class Lcom/tudou/ui/fragment/AttentionFragment$8$1;
.super Ljava/lang/Object;
.source "AttentionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AttentionFragment$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/AttentionFragment$8;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AttentionFragment$8;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/tudou/ui/fragment/AttentionFragment$8$1;->this$1:Lcom/tudou/ui/fragment/AttentionFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 576
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 583
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment$8$1;->this$1:Lcom/tudou/ui/fragment/AttentionFragment$8;

    iget-object v0, v0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/AttentionFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 581
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment$8$1;->this$1:Lcom/tudou/ui/fragment/AttentionFragment$8;

    iget-object v0, v0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment$8$1;->this$1:Lcom/tudou/ui/fragment/AttentionFragment$8;

    iget-object v0, v0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/AttentionFragment;->access$2000(Lcom/tudou/ui/fragment/AttentionFragment;)V

    goto :goto_0
.end method
