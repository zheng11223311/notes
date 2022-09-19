.class Lcom/youku/phone/detail/plugin/PluginSmall$29;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->goReplayNextPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmall;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0

    .prologue
    .line 2523
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$29;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$29;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$29;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$29;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$29;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2529
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$29;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$29;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2531
    :cond_0
    return-void
.end method
