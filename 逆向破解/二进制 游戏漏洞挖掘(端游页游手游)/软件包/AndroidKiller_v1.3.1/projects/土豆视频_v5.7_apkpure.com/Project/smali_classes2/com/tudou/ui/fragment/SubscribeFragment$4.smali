.class Lcom/tudou/ui/fragment/SubscribeFragment$4;
.super Ljava/lang/Object;
.source "SubscribeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SubscribeFragment;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SubscribeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 270
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 278
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 275
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 276
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$1000(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->showNoLimitTouchModel(Landroid/content/Context;)V

    .line 277
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->initData()V

    goto :goto_0
.end method
