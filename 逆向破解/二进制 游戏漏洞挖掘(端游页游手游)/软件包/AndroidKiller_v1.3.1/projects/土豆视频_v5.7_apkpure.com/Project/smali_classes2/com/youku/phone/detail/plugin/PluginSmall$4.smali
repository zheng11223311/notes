.class Lcom/youku/phone/detail/plugin/PluginSmall$4;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;
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
    .line 496
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$4;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 499
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$4;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->playGestureCenterTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$4;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->playGestureCenterTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$4;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->playGestureCenterTime_line:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$4;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->playGestureCenterTime_line:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$4;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_controller_center_time_layout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$4;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_controller_center_time_layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    :cond_2
    return-void
.end method
