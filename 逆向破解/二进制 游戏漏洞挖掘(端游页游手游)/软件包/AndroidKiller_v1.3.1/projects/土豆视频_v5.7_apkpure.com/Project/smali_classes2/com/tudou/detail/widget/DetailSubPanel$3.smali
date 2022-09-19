.class Lcom/tudou/detail/widget/DetailSubPanel$3;
.super Ljava/lang/Object;
.source "DetailSubPanel.java"

# interfaces
.implements Lcom/tudou/ui/fragment/GiftFragment$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/module/VideoUrlInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/DetailSubPanel;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/DetailSubPanel;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/tudou/detail/widget/DetailSubPanel$3;->this$0:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginSuccess()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel$3;->this$0:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailSubPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->replayWhenStateChange(Z)V

    .line 181
    return-void
.end method
