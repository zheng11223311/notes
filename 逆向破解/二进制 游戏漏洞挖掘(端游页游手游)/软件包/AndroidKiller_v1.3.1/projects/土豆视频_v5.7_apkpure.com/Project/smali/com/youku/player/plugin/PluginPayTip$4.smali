.class Lcom/youku/player/plugin/PluginPayTip$4;
.super Ljava/lang/Object;
.source "PluginPayTip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginPayTip;->showProperTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginPayTip;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginPayTip;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/youku/player/plugin/PluginPayTip$4;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$4;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginPayTip;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$4;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$4;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    sget-object v1, Lcom/youku/player/plugin/PluginPayTip$TipState;->CLOSED:Lcom/youku/player/plugin/PluginPayTip$TipState;

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginPayTip;->access$002(Lcom/youku/player/plugin/PluginPayTip;Lcom/youku/player/plugin/PluginPayTip$TipState;)Lcom/youku/player/plugin/PluginPayTip$TipState;

    .line 332
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$4;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    new-instance v1, Lcom/youku/player/plugin/PluginPayTip$4$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginPayTip$4$1;-><init>(Lcom/youku/player/plugin/PluginPayTip$4;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginPayTip;->close(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method
