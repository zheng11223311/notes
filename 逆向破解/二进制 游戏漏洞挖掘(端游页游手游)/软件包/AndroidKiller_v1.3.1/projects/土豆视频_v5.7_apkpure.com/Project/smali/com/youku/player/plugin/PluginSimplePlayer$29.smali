.class Lcom/youku/player/plugin/PluginSimplePlayer$29;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->goReplayPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginSimplePlayer;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$29;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1445
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$29;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1300(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$29;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$3200(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$29;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1300(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer$29;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$3200(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1447
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$29;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1300(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer$29;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$3200(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1448
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$29;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$3200(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$id;->ll_next_play:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1450
    .local v0, "nextLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 1451
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1454
    .end local v0    # "nextLayout":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method
