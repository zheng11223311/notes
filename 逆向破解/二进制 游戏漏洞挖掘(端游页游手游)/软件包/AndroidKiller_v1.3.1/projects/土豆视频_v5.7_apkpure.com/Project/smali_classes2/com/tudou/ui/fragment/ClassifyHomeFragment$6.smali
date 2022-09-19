.class Lcom/tudou/ui/fragment/ClassifyHomeFragment$6;
.super Ljava/lang/Object;
.source "ClassifyHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyHomeFragment;->eventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$6;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$6;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$100(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->getHintType()Lcom/youku/widget/HintView$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    if-ne v0, v1, :cond_0

    .line 220
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$6;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 225
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$6;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$100(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 226
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$6;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$1300(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$6;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/service/classify/Classify;->getChannalList(Landroid/os/Handler;)V

    goto :goto_0
.end method
