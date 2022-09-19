.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PluginFullScreenHorizontal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;


# direct methods
.method private constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p2, "x1"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 167
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "onDoubleTap isShowWindow = "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v2, 0x258

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playPause()V

    .line 174
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 327
    const-string v5, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v6, 0x190

    invoke-static {v5, v6, v7, v8}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;JZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 345
    :goto_0
    return v9

    .line 330
    :cond_0
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lcom/tudou/ui/activity/DetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 331
    .local v3, "mAudioManager":Landroid/media/AudioManager;
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v3, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$902(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I

    .line 332
    invoke-virtual {v3, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 333
    .local v1, "curVolue":I
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    mul-int/lit8 v6, v1, 0xf

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)F

    .line 334
    sget-object v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDown offsetY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v7}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v5}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 336
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "bright"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 337
    .local v4, "value":I
    if-nez v4, :cond_1

    .line 339
    :try_start_0
    const-string v5, "screen_brightness"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 344
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    int-to-float v6, v4

    invoke-static {v5, v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1002(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)F

    goto :goto_0

    .line 340
    :catch_0
    move-exception v2

    .line 341
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
    .line 179
    const-string v10, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v12, 0x190

    const/4 v11, 0x0

    invoke-static {v10, v12, v13, v11}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;JZ)Z

    move-result v10

    if-nez v10, :cond_0

    .line 180
    const/4 v10, 0x1

    .line 323
    :goto_0
    return v10

    .line 182
    :cond_0
    sget-object v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onScroll directionalLock = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v12}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v10, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v12, 0x190

    const/4 v11, 0x0

    invoke-static {v10, v12, v13, v11}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;JZ)Z

    move-result v10

    if-nez v10, :cond_1

    .line 184
    invoke-super/range {p0 .. p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    goto :goto_0

    .line 186
    :cond_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_c

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_c

    .line 187
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$602(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v12}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a02b1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    sub-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    .line 190
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v8

    .line 191
    .local v8, "oldOffsetY":F
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    move/from16 v0, p4

    invoke-static {v10, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$816(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)F

    .line 193
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 194
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)F

    .line 196
    :cond_2
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    mul-int/lit8 v11, v11, 0xf

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 197
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    mul-int/lit8 v11, v11, 0xf

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)F

    .line 200
    :cond_3
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_6

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    mul-int/lit8 v11, v11, 0xf

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_6

    .line 202
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->volume:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;->onVolumnChange(I)V

    .line 203
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v10

    const/high16 v11, 0x41700000    # 15.0f

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 204
    .local v4, "cur":I
    const/high16 v10, 0x41700000    # 15.0f

    div-float v10, v8, v10

    float-to-int v9, v10

    .line 206
    .local v9, "oldcur":I
    if-eq v4, v9, :cond_5

    .line 207
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Lcom/tudou/ui/activity/DetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 208
    .local v6, "mAudioManager":Landroid/media/AudioManager;
    if-eqz v6, :cond_4

    .line 209
    invoke-virtual {v6}, Landroid/media/AudioManager;->getMode()I

    move-result v10

    const/4 v11, -0x2

    if-ne v10, v11, :cond_4

    .line 210
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/media/AudioManager;->setMode(I)V

    .line 213
    :cond_4
    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v4, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 215
    .end local v6    # "mAudioManager":Landroid/media/AudioManager;
    :cond_5
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideController(Z)V

    .line 216
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideBrightView()V

    .line 217
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideSeekbarView()V

    .line 218
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideTimeView()V

    .line 219
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showVolumeView()V

    .line 323
    .end local v4    # "cur":I
    .end local v8    # "oldOffsetY":F
    .end local v9    # "oldcur":I
    :cond_6
    :goto_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 221
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a02b1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_6

    .line 223
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v2

    .line 224
    .local v2, "_oldOffsetY":F
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    move/from16 v0, p4

    invoke-static {v10, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1016(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)F

    .line 226
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 227
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1002(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)F

    .line 229
    :cond_8
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    .line 230
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1002(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)F

    .line 233
    :cond_9
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_6

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_6

    .line 235
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->bright:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;->onBrightChange(I)V

    .line 237
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 238
    .restart local v4    # "cur":I
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v10, v2, v10

    float-to-int v9, v10

    .line 240
    .restart local v9    # "oldcur":I
    if-eq v4, v9, :cond_b

    .line 254
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v10}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 255
    .local v3, "cr":Landroid/content/ContentResolver;
    const-string v10, "screen_brightness_mode"

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 256
    .local v7, "mode":I
    const/4 v10, 0x1

    if-ne v7, v10, :cond_a

    .line 257
    const-string v10, "screen_brightness_mode"

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    :cond_a
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v10}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_brightness"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    sput v4, Lcom/tudou/ui/activity/DetailActivity;->mScreenBrightCur:I

    .line 261
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/content/SharedPreferences;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 262
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 265
    .local v5, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v10, "bright"

    invoke-interface {v5, v10, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "mode":I
    :cond_b
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideController(Z)V

    .line 270
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideVolumeView()V

    .line 271
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideSeekbarView()V

    .line 272
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideTimeView()V

    .line 273
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showBrightView()V

    goto/16 :goto_1

    .line 276
    .end local v2    # "_oldOffsetY":F
    .end local v4    # "cur":I
    .end local v9    # "oldcur":I
    :cond_c
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F

    move-result v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_6

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    .line 279
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$602(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I

    .line 281
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v10, v10, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-boolean v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    if-nez v10, :cond_e

    .line 282
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 285
    :cond_e
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v10

    if-gez v10, :cond_10

    .line 286
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v10, v10, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v10, :cond_f

    .line 287
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 289
    :cond_f
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v11, v11, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v11, v11, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v11}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1402(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I

    .line 291
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v10

    div-int/lit16 v10, v10, 0x3e8

    const/16 v11, 0x1e

    if-le v10, v11, :cond_13

    .line 292
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v12}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getWidth()I

    move-result v12

    div-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x4

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1502(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I

    .line 298
    :cond_10
    :goto_2
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v10

    if-gez v10, :cond_11

    .line 299
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v11, v11, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v11}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1602(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I

    .line 300
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1702(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I

    .line 302
    :cond_11
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v10

    if-ltz v10, :cond_12

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v10

    if-gez v10, :cond_14

    .line 303
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 294
    :cond_13
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v12}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getWidth()I

    move-result v12

    div-int/2addr v11, v12

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1502(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I

    goto :goto_2

    .line 305
    :cond_14
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, p3

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1624(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)I

    .line 307
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v10

    if-gez v10, :cond_16

    .line 308
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1602(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I

    .line 312
    :cond_15
    :goto_3
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v10

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-lez v10, :cond_6

    .line 313
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v10, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->lastInteractTime:J

    .line 314
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 315
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideController(Z)V

    .line 316
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideBrightView()V

    .line 317
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideVolumeView()V

    .line 318
    const-string v10, "test1"

    const-string v11, "onscool showCenterSildeTime"

    invoke-static {v10, v11}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v10, "wangyan"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentPosition:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v12}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    int-to-long v12, v11

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v11, v14}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showCenterSildeTime(JIZ)V

    goto/16 :goto_1

    .line 309
    :cond_16
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    if-le v10, v11, :cond_15

    .line 310
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1602(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I

    goto/16 :goto_3
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp isShowWindow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v2, 0x190

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    .line 162
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
