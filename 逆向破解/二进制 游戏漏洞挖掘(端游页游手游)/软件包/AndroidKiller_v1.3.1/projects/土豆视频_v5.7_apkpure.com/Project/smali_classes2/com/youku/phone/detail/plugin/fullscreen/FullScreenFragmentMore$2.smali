.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$2;
.super Ljava/lang/Object;
.source "FullScreenFragmentMore.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 184
    if-eqz p3, :cond_0

    .line 185
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    div-int/lit8 v2, p2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 187
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 180
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 176
    return-void
.end method
