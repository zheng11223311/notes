.class Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PluginFullScreenPlayHLS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;


# direct methods
.method private constructor <init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;
    .param p2, "x1"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$1;

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;-><init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    .line 579
    const-string v5, "test3"

    const-string v6, "onDown "

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v5, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v5, v5, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->context:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 582
    .local v3, "mAudioManager":Landroid/media/AudioManager;
    iget-object v5, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$802(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;I)I

    .line 584
    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 586
    .local v1, "curVolue":I
    iget-object v5, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    mul-int/lit8 v6, v1, 0xf

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$702(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;F)F

    .line 587
    iget-object v5, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v5, v5, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->audio:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    iget-object v6, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v6}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$700(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->onVolumnChange(I)V

    .line 588
    iget-object v5, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v5, v5, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 589
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v5}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$1100(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "bright"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 590
    .local v4, "value":I
    if-nez v4, :cond_0

    .line 592
    :try_start_0
    const-string v5, "screen_brightness"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 598
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    int-to-float v6, v4

    invoke-static {v5, v6}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$902(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;F)F

    .line 599
    const/4 v5, 0x1

    return v5

    .line 594
    :catch_0
    move-exception v2

    .line 595
    .local v2, "e1":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 13
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 488
    const-string v9, "test3"

    const-string v10, "onScroll "

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget-object v10, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$600(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$200(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    .line 491
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$202(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;I)I

    .line 493
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v11}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a02b1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_5

    .line 495
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$700(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v5

    .line 496
    .local v5, "oldOffsetY":F
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    move/from16 v0, p4

    invoke-static {v9, v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$716(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;F)F

    .line 498
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$700(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v9

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    .line 499
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$702(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;F)F

    .line 501
    :cond_0
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$700(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v9

    iget-object v10, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$800(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)I

    move-result v10

    mul-int/lit8 v10, v10, 0xf

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 502
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v10, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$800(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)I

    move-result v10

    mul-int/lit8 v10, v10, 0xf

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$702(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;F)F

    .line 505
    :cond_1
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$700(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$700(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v9

    iget-object v10, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$800(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)I

    move-result v10

    mul-int/lit8 v10, v10, 0xf

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_4

    .line 507
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v9, v9, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->volume:Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;

    iget-object v10, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$700(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->onVolumnChange(I)V

    .line 509
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$700(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v9

    const/high16 v10, 0x41700000    # 15.0f

    div-float/2addr v9, v10

    float-to-int v2, v9

    .line 510
    .local v2, "cur":I
    const/high16 v9, 0x41700000    # 15.0f

    div-float v9, v5, v9

    float-to-int v6, v9

    .line 512
    .local v6, "oldcur":I
    if-eq v2, v6, :cond_3

    .line 513
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v9, v9, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->context:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 515
    .local v4, "mAudioManager":Landroid/media/AudioManager;
    if-eqz v4, :cond_2

    .line 516
    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_2

    .line 517
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->setMode(I)V

    .line 521
    :cond_2
    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v2, v10}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 523
    const-string v9, "\u64ad\u653e\u9875\u7528\u6237\u624b\u52bf\u8c03\u8282\u97f3\u91cf"

    const-class v10, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u7528\u6237\u624b\u52bf"

    invoke-static {v9, v10, v11}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .end local v4    # "mAudioManager":Landroid/media/AudioManager;
    :cond_3
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideController()V

    .line 527
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->showVolumeView()V

    .line 575
    .end local v2    # "cur":I
    .end local v5    # "oldOffsetY":F
    .end local v6    # "oldcur":I
    :cond_4
    :goto_0
    const/4 v9, 0x0

    return v9

    .line 529
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a02b1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    .line 531
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$900(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v1

    .line 532
    .local v1, "_oldOffsetY":F
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    move/from16 v0, p4

    invoke-static {v9, v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$916(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;F)F

    .line 534
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$900(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v9

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    .line 535
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$902(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;F)F

    .line 537
    :cond_6
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$900(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v9

    iget-object v10, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$1000(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 538
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v10, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$1000(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$902(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;F)F

    .line 541
    :cond_7
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$900(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$900(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v9

    iget-object v10, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$1000(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_4

    .line 543
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v9, v9, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->bright:Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;

    iget-object v10, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$900(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->onBrightChange(I)V

    .line 545
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$900(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v9, v10

    float-to-int v2, v9

    .line 546
    .restart local v2    # "cur":I
    const/high16 v9, 0x3f800000    # 1.0f

    div-float v9, v1, v9

    float-to-int v6, v9

    .line 548
    .restart local v6    # "oldcur":I
    if-eq v2, v6, :cond_b

    .line 549
    int-to-float v9, v2

    iget-object v10, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v10}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$1000(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)I

    move-result v10

    int-to-float v10, v10

    div-float v7, v9, v10

    .line 550
    .local v7, "tmpFloat":F
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v7, v9

    if-lez v9, :cond_8

    .line 551
    const/high16 v7, 0x3f800000    # 1.0f

    .line 553
    :cond_8
    const v9, 0x3d4ccccd    # 0.05f

    cmpg-float v9, v7, v9

    if-gez v9, :cond_9

    .line 554
    const v7, 0x3d4ccccd    # 0.05f

    .line 556
    :cond_9
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v9, v9, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mActivity:Lcom/youku/player/base/YoukuBasePlayerActivity;

    invoke-virtual {v9}, Lcom/youku/player/base/YoukuBasePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 558
    .local v8, "wl":Landroid/view/WindowManager$LayoutParams;
    iput v7, v8, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 559
    const-string v9, "lelouch"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenBrightness :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v9, v9, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mActivity:Lcom/youku/player/base/YoukuBasePlayerActivity;

    invoke-virtual {v9}, Lcom/youku/player/base/YoukuBasePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 561
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$1100(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)Landroid/content/SharedPreferences;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 562
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$1100(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 563
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v10, "bright"

    const v9, 0x3ecccccd    # 0.4f

    cmpl-float v9, v7, v9

    if-nez v9, :cond_c

    const/4 v9, 0x1

    :goto_1
    invoke-interface {v3, v10, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 565
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 567
    .end local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_a
    const-string v9, "\u64ad\u653e\u9875\u7528\u6237\u624b\u52bf\u8c03\u8282\u4eae\u5ea6"

    const-class v10, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u7528\u6237\u624b\u52bf"

    invoke-static {v9, v10, v11}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .end local v7    # "tmpFloat":F
    .end local v8    # "wl":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideController()V

    .line 571
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->showBrightView()V

    goto/16 :goto_0

    .line 563
    .restart local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "tmpFloat":F
    .restart local v8    # "wl":Landroid/view/WindowManager$LayoutParams;
    :cond_c
    iget-object v9, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v9}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$1000(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$500(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    .line 483
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
