.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PluginFullScreenVertical.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;


# direct methods
.method private constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V
    .locals 0

    .prologue
    .line 1726
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p2, "x1"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$1;

    .prologue
    .line 1726
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1740
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDoubleTap isShowWindow = "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playPause()V

    .line 1745
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1882
    const-string v5, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v6, 0x190

    invoke-static {v5, v6, v7, v8}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;JZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1900
    :goto_0
    return v9

    .line 1885
    :cond_0
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lcom/tudou/ui/activity/DetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1886
    .local v3, "mAudioManager":Landroid/media/AudioManager;
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v3, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2002(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I

    .line 1887
    invoke-virtual {v3, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1888
    .local v1, "curVolue":I
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    mul-int/lit8 v6, v1, 0xf

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$902(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F

    .line 1889
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$700()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDown offsetY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v7}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v5}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1891
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "bright"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1892
    .local v4, "value":I
    if-nez v4, :cond_1

    .line 1894
    :try_start_0
    const-string v5, "screen_brightness"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1899
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    int-to-float v6, v4

    invoke-static {v5, v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2102(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F

    goto :goto_0

    .line 1895
    :catch_0
    move-exception v2

    .line 1896
    .local v2, "e1":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1750
    const-string v10, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v12, 0x190

    const/4 v11, 0x0

    invoke-static {v10, v12, v13, v11}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;JZ)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1751
    const/4 v10, 0x1

    .line 1878
    :goto_0
    return v10

    .line 1753
    :cond_0
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$700()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onScroll directionalLock = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v12}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const-string v10, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v12, 0x190

    const/4 v11, 0x0

    invoke-static {v10, v12, v13, v11}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;JZ)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1755
    invoke-super/range {p0 .. p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    goto :goto_0

    .line 1757
    :cond_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_c

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_c

    .line 1758
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I

    .line 1760
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v12}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a02b1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    sub-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    .line 1761
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v8

    .line 1762
    .local v8, "oldOffsetY":F
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    move/from16 v0, p4

    invoke-static {v10, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$916(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F

    .line 1764
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 1765
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$902(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F

    .line 1767
    :cond_2
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    mul-int/lit8 v11, v11, 0xf

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 1768
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    mul-int/lit8 v11, v11, 0xf

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$902(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F

    .line 1771
    :cond_3
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_6

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    mul-int/lit8 v11, v11, 0xf

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_6

    .line 1773
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->volume:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;->onVolumnChange(I)V

    .line 1774
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v10

    const/high16 v11, 0x41700000    # 15.0f

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 1775
    .local v4, "cur":I
    const/high16 v10, 0x41700000    # 15.0f

    div-float v10, v8, v10

    float-to-int v9, v10

    .line 1777
    .local v9, "oldcur":I
    if-eq v4, v9, :cond_5

    .line 1778
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Lcom/tudou/ui/activity/DetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 1779
    .local v6, "mAudioManager":Landroid/media/AudioManager;
    if-eqz v6, :cond_4

    .line 1780
    invoke-virtual {v6}, Landroid/media/AudioManager;->getMode()I

    move-result v10

    const/4 v11, -0x2

    if-ne v10, v11, :cond_4

    .line 1781
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/media/AudioManager;->setMode(I)V

    .line 1784
    :cond_4
    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v4, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1786
    .end local v6    # "mAudioManager":Landroid/media/AudioManager;
    :cond_5
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideController(Z)V

    .line 1787
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideBrightView()V

    .line 1788
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideSeekBarView()V

    .line 1789
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideTimeView()V

    .line 1790
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    .line 1791
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showVolumeView()V

    .line 1878
    .end local v4    # "cur":I
    .end local v8    # "oldOffsetY":F
    .end local v9    # "oldcur":I
    :cond_6
    :goto_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1793
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a02b1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_6

    .line 1795
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v2

    .line 1796
    .local v2, "_oldOffsetY":F
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    move/from16 v0, p4

    invoke-static {v10, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2116(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F

    .line 1797
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 1798
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2102(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F

    .line 1800
    :cond_8
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    .line 1801
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2102(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F

    .line 1804
    :cond_9
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_6

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_6

    .line 1806
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->bright:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;->onBrightChange(I)V

    .line 1808
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 1809
    .restart local v4    # "cur":I
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v10, v2, v10

    float-to-int v9, v10

    .line 1811
    .restart local v9    # "oldcur":I
    if-eq v4, v9, :cond_b

    .line 1812
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v10}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1813
    .local v3, "cr":Landroid/content/ContentResolver;
    const-string v10, "screen_brightness_mode"

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1814
    .local v7, "mode":I
    const/4 v10, 0x1

    if-ne v7, v10, :cond_a

    .line 1815
    const-string v10, "screen_brightness_mode"

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1817
    :cond_a
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v10}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_brightness"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1818
    sput v4, Lcom/tudou/ui/activity/DetailActivity;->mScreenBrightCur:I

    .line 1819
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/content/SharedPreferences;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 1820
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1821
    .local v5, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v10, "bright"

    invoke-interface {v5, v10, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1822
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1825
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "mode":I
    :cond_b
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideController(Z)V

    .line 1826
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideVolumeView()V

    .line 1827
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideSeekBarView()V

    .line 1828
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideTimeView()V

    .line 1829
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    .line 1830
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showBrightView()V

    goto/16 :goto_1

    .line 1833
    .end local v2    # "_oldOffsetY":F
    .end local v4    # "cur":I
    .end local v9    # "oldcur":I
    :cond_c
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F

    move-result v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_6

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    .line 1834
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I

    .line 1836
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v10, v10, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-boolean v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->firstLoaded:Z

    if-nez v10, :cond_e

    .line 1837
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1840
    :cond_e
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v10

    if-gez v10, :cond_10

    .line 1841
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v10, v10, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v10, :cond_f

    .line 1842
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1844
    :cond_f
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v11, v11, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v11, v11, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v11}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2502(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I

    .line 1845
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v10

    div-int/lit16 v10, v10, 0x3e8

    const/16 v11, 0x1e

    if-le v10, v11, :cond_13

    .line 1846
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v12}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->getWidth()I

    move-result v12

    div-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x4

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2602(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I

    .line 1852
    :cond_10
    :goto_2
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v10

    if-gez v10, :cond_11

    .line 1853
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v11, v11, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v11}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2702(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I

    .line 1854
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I

    .line 1856
    :cond_11
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v10

    if-ltz v10, :cond_12

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v10

    if-gez v10, :cond_14

    .line 1857
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1848
    :cond_13
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v12}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->getWidth()I

    move-result v12

    div-int/2addr v11, v12

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2602(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I

    goto :goto_2

    .line 1859
    :cond_14
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, p3

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2724(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)I

    .line 1861
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v10

    if-gez v10, :cond_16

    .line 1862
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2702(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I

    .line 1866
    :cond_15
    :goto_3
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v10

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-lez v10, :cond_6

    .line 1867
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v10, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;->lastInteractTime:J

    .line 1868
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->stopUserAction:Z

    .line 1869
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideController(Z)V

    .line 1870
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideBrightView()V

    .line 1871
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideVolumeView()V

    .line 1872
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    .line 1873
    const-string v10, "test1"

    const-string v11, "onscool showCenterSildeTime"

    invoke-static {v10, v11}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    const-string v10, "wangyan"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentPosition:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v12}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    int-to-long v12, v11

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v11, v14}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showCenterSildeTime(JIZ)V

    goto/16 :goto_1

    .line 1863
    :cond_16
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    if-le v10, v11, :cond_15

    .line 1864
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$2702(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I

    goto/16 :goto_3
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1729
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp isShowWindow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v0, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1731
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1735
    :goto_0
    return v0

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    .line 1734
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    .line 1735
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
