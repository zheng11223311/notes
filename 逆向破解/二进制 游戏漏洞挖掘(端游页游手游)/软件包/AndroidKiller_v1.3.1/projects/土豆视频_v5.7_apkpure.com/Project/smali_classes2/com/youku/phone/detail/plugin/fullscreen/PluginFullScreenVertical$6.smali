.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$6;
.super Ljava/lang/Object;
.source "PluginFullScreenVertical.java"

# interfaces
.implements Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->setupmSystemUiHider(Lcom/tudou/ui/activity/DetailActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 5
    .param p1, "visible"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 646
    invoke-static {}, Lcom/youku/util/UIUtils;->hasHoneycombMR2()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnVisibilityChangeListener visible= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    if-eqz p1, :cond_3

    .line 653
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_1

    .line 655
    :cond_0
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    .line 657
    :cond_1
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 659
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 661
    .local v0, "curVolue":I
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    mul-int/lit8 v3, v0, 0xf

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$902(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F

    .line 662
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;->userAction()V

    .line 668
    .end local v0    # "curVolue":I
    .end local v1    # "mAudioManager":Landroid/media/AudioManager;
    :cond_2
    :goto_0
    return-void

    .line 664
    :cond_3
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideController(Z)V

    goto :goto_0
.end method
