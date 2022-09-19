.class Lcom/youku/phone/detail/plugin/PluginSmall$21;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->showLoadinfo()V
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
    .line 2070
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$21;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$21;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$21;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$21;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2800(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2075
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$21;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$21;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2800(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$21;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2900(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/youku/widget/Loading;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/Loading;->setVisibility(I)V

    .line 2079
    return-void
.end method
