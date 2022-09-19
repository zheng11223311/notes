.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$3;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 133
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playGestureCenterTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playGestureCenterTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playGestureCenterTime_line:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playGestureCenterTime_line:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->play_controller_center_time_layout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->play_controller_center_time_layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_2
    return-void
.end method
