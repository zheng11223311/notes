.class Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PluginSmall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmall;


# direct methods
.method private constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0

    .prologue
    .line 2857
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;Lcom/youku/phone/detail/plugin/PluginSmall$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p2, "x1"    # Lcom/youku/phone/detail/plugin/PluginSmall$1;

    .prologue
    .line 2857
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2860
    const-string v0, "test3"

    const-string v1, "onDoubleTap isShowWindow = "

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3900(Lcom/youku/phone/detail/plugin/PluginSmall;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2862
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->playParse(Z)V

    .line 2863
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    .line 3027
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v4}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/tudou/ui/activity/DetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 3029
    .local v2, "mAudioManager":Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4302(Lcom/youku/phone/detail/plugin/PluginSmall;I)I

    .line 3031
    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 3033
    .local v1, "curVolue":I
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    mul-int/lit8 v5, v1, 0xf

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4202(Lcom/youku/phone/detail/plugin/PluginSmall;F)F

    .line 3035
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v4}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3036
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v4}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4600(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "bright"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3045
    .local v3, "value":I
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    int-to-float v5, v3

    invoke-static {v4, v5}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4402(Lcom/youku/phone/detail/plugin/PluginSmall;F)F

    .line 3046
    const-string v4, "test1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDown _offsetY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4400(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    const/4 v4, 0x1

    return v4
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 14
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 2877
    const-string v10, "test3"

    const-string v11, "onScroll "

    invoke-static {v10, v11}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4000(Lcom/youku/phone/detail/plugin/PluginSmall;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2883
    const/4 v10, 0x0

    .line 3023
    :goto_0
    return v10

    .line 2885
    :cond_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4100(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_b

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$500(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_b

    .line 2887
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$502(Lcom/youku/phone/detail/plugin/PluginSmall;I)I

    .line 2889
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v12}, Lcom/youku/phone/detail/plugin/PluginSmall;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a02b1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    sub-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    .line 2891
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4200(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v8

    .line 2892
    .local v8, "oldOffsetY":F
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    move/from16 v0, p4

    invoke-static {v10, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4216(Lcom/youku/phone/detail/plugin/PluginSmall;F)F

    .line 2894
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4200(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 2895
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4202(Lcom/youku/phone/detail/plugin/PluginSmall;F)F

    .line 2897
    :cond_1
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4200(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4300(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    mul-int/lit8 v11, v11, 0xf

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 2898
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4300(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    mul-int/lit8 v11, v11, 0xf

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4202(Lcom/youku/phone/detail/plugin/PluginSmall;F)F

    .line 2901
    :cond_2
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4200(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_5

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4200(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4300(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    mul-int/lit8 v11, v11, 0xf

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_5

    .line 2903
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/PluginSmall;->volume:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4200(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;->onVolumnChange(I)V

    .line 2904
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4200(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v10

    const/high16 v11, 0x41700000    # 15.0f

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 2905
    .local v4, "cur":I
    const/high16 v10, 0x41700000    # 15.0f

    div-float v10, v8, v10

    float-to-int v9, v10

    .line 2907
    .local v9, "oldcur":I
    if-eq v4, v9, :cond_4

    .line 2908
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v10

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Lcom/tudou/ui/activity/DetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 2909
    .local v6, "mAudioManager":Landroid/media/AudioManager;
    if-eqz v6, :cond_3

    .line 2910
    invoke-virtual {v6}, Landroid/media/AudioManager;->getMode()I

    move-result v10

    const/4 v11, -0x2

    if-ne v10, v11, :cond_3

    .line 2911
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/media/AudioManager;->setMode(I)V

    .line 2914
    :cond_3
    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v4, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2916
    .end local v6    # "mAudioManager":Landroid/media/AudioManager;
    :cond_4
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3600(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 2917
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideBrightView()V

    .line 2918
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideTimeView()V

    .line 2919
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->showVolumeView()V

    .line 3023
    .end local v4    # "cur":I
    .end local v8    # "oldOffsetY":F
    .end local v9    # "oldcur":I
    :cond_5
    :goto_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2921
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a02b1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    .line 2923
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4400(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v2

    .line 2924
    .local v2, "_oldOffsetY":F
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    move/from16 v0, p4

    invoke-static {v10, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4416(Lcom/youku/phone/detail/plugin/PluginSmall;F)F

    .line 2926
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4400(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 2927
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4402(Lcom/youku/phone/detail/plugin/PluginSmall;F)F

    .line 2929
    :cond_7
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4400(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4500(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    .line 2930
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4500(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4402(Lcom/youku/phone/detail/plugin/PluginSmall;F)F

    .line 2933
    :cond_8
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4400(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_5

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4400(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4500(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_5

    .line 2934
    const-string v10, "test1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_offsetY = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v12}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4400(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/PluginSmall;->bright:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4400(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;->onBrightChange(I)V

    .line 2937
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4400(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 2938
    .restart local v4    # "cur":I
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v10, v2, v10

    float-to-int v9, v10

    .line 2940
    .restart local v9    # "oldcur":I
    if-eq v4, v9, :cond_a

    .line 2941
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2942
    .local v3, "cr":Landroid/content/ContentResolver;
    const-string v10, "screen_brightness_mode"

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 2943
    .local v7, "mode":I
    const/4 v10, 0x1

    if-ne v7, v10, :cond_9

    .line 2944
    const-string v10, "screen_brightness_mode"

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2946
    :cond_9
    const-string v10, "screen_brightness"

    invoke-static {v3, v10, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2957
    sput v4, Lcom/tudou/ui/activity/DetailActivity;->mScreenBrightCur:I

    .line 2958
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4600(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/content/SharedPreferences;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 2959
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4600(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 2962
    .local v5, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v10, "bright"

    invoke-interface {v5, v10, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2963
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2969
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "mode":I
    :cond_a
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3600(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 2970
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideVolumeView()V

    .line 2971
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideTimeView()V

    .line 2972
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->showBrightView()V

    goto/16 :goto_1

    .line 2975
    .end local v2    # "_oldOffsetY":F
    .end local v4    # "cur":I
    .end local v9    # "oldcur":I
    :cond_b
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4700(Lcom/youku/phone/detail/plugin/PluginSmall;)F

    move-result v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$500(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 2978
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$502(Lcom/youku/phone/detail/plugin/PluginSmall;I)I

    .line 2980
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v10, v10, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4000(Lcom/youku/phone/detail/plugin/PluginSmall;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 2981
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2984
    :cond_d
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4800(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v10

    if-gez v10, :cond_f

    .line 2985
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v10, v10, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v10, v10, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v10, :cond_e

    .line 2986
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2988
    :cond_e
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v11, v11, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v11, v11, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v11}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4802(Lcom/youku/phone/detail/plugin/PluginSmall;I)I

    .line 2990
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4800(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v10

    div-int/lit16 v10, v10, 0x3e8

    const/16 v11, 0x1e

    if-le v10, v11, :cond_12

    .line 2991
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4800(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v12}, Lcom/youku/phone/detail/plugin/PluginSmall;->getWidth()I

    move-result v12

    div-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x4

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4902(Lcom/youku/phone/detail/plugin/PluginSmall;I)I

    .line 2997
    :cond_f
    :goto_2
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5000(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v10

    if-gez v10, :cond_10

    .line 2998
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v11, v11, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v11}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5002(Lcom/youku/phone/detail/plugin/PluginSmall;I)I

    .line 2999
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5000(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5102(Lcom/youku/phone/detail/plugin/PluginSmall;I)I

    .line 3001
    :cond_10
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4800(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v10

    if-ltz v10, :cond_11

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5000(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v10

    if-gez v10, :cond_13

    .line 3002
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2993
    :cond_12
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4800(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v12}, Lcom/youku/phone/detail/plugin/PluginSmall;->getWidth()I

    move-result v12

    div-int/2addr v11, v12

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4902(Lcom/youku/phone/detail/plugin/PluginSmall;I)I

    goto :goto_2

    .line 3004
    :cond_13
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4900(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, p3

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5024(Lcom/youku/phone/detail/plugin/PluginSmall;F)I

    .line 3006
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5000(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v10

    if-gez v10, :cond_15

    .line 3007
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5002(Lcom/youku/phone/detail/plugin/PluginSmall;I)I

    .line 3011
    :cond_14
    :goto_3
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4800(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v10

    if-lez v10, :cond_5

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5000(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5100(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-lez v10, :cond_5

    .line 3013
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v10, Lcom/youku/phone/detail/plugin/PluginSmall;->lastInteractTime:J

    .line 3015
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideBrightView()V

    .line 3016
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideVolumeView()V

    .line 3017
    const-string v10, "test1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "test1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v12}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5000(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v12

    iget-object v13, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v13}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5100(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5000(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    iget-object v12, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v12}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5100(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/youku/phone/detail/plugin/PluginSmall;->showCenterSildeTime(IIZ)V

    goto/16 :goto_1

    .line 3008
    :cond_15
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v10}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5000(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v10

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4800(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    if-le v10, v11, :cond_14

    .line 3009
    iget-object v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$4800(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$5002(Lcom/youku/phone/detail/plugin/PluginSmall;I)I

    goto/16 :goto_3
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2867
    const-string v0, "test3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp isShowWindow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$100(Lcom/youku/phone/detail/plugin/PluginSmall;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2869
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3200(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 2870
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->userAction()V

    .line 2872
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
