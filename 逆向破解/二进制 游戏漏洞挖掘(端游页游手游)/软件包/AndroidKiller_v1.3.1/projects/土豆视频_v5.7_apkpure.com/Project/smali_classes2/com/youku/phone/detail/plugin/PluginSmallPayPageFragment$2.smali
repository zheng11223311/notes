.class Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment$2;
.super Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;
.source "PluginSmallPayPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment$2;->this$0:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onSucess()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment$2;->this$0:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->replayWhenStateChange(Z)V

    .line 198
    return-void
.end method
