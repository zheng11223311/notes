.class Lcom/youku/phone/detail/plugin/PluginSmall$28;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->goReplayPage()V
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
    .line 2481
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$28;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2485
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$28;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$28;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2486
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$28;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall$28;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2487
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$28;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall$28;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2488
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$28;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0428

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2490
    .local v0, "nextLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 2491
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2494
    .end local v0    # "nextLayout":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method
