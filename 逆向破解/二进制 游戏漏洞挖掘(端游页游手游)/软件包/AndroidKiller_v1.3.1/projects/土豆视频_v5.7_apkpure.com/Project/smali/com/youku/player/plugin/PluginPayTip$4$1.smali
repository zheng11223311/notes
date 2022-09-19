.class Lcom/youku/player/plugin/PluginPayTip$4$1;
.super Ljava/lang/Object;
.source "PluginPayTip.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginPayTip$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/plugin/PluginPayTip$4;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginPayTip$4;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/youku/player/plugin/PluginPayTip$4$1;->this$1:Lcom/youku/player/plugin/PluginPayTip$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$4$1;->this$1:Lcom/youku/player/plugin/PluginPayTip$4;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginPayTip$4;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginPayTip;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$4$1;->this$1:Lcom/youku/player/plugin/PluginPayTip$4;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginPayTip$4;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    iget-boolean v0, v0, Lcom/youku/player/plugin/PluginPayTip;->isHide:Z

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$4$1;->this$1:Lcom/youku/player/plugin/PluginPayTip$4;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginPayTip$4;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginPayTip;->access$100(Lcom/youku/player/plugin/PluginPayTip;)V

    .line 351
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$4$1;->this$1:Lcom/youku/player/plugin/PluginPayTip$4;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginPayTip$4;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginPayTip;->show()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 344
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 338
    return-void
.end method
