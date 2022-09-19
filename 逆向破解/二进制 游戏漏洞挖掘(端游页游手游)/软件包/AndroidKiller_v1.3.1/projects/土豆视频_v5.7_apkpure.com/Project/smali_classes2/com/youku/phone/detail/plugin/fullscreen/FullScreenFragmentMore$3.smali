.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$3;
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
    .line 192
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v5, 0x0

    .line 203
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    if-eqz p3, :cond_1

    .line 206
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 208
    .local v1, "mode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 209
    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    :cond_0
    const-string v2, "screen_brightness"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    sput p2, Lcom/tudou/ui/activity/DetailActivity;->mScreenBrightCur:I

    .line 214
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "mode":I
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 199
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 195
    return-void
.end method
