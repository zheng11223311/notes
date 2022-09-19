.class public Lcom/youku/laifeng/sdk/util/AnimationController;
.super Ljava/lang/Object;
.source "AnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/util/AnimationController$MyAnimationListener;
    }
.end annotation


# instance fields
.field public final Accelerate:I

.field public final AccelerateDecelerate:I

.field public final Anticipate:I

.field public final AnticipateOvershoot:I

.field public final Bounce:I

.field public final Decelerate:I

.field public final Default:I

.field public final Linear:I

.field public final Overshoot:I

.field public final rela1:I

.field public final rela2:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lcom/youku/laifeng/sdk/util/AnimationController;->rela1:I

    .line 24
    iput v2, p0, Lcom/youku/laifeng/sdk/util/AnimationController;->rela2:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/laifeng/sdk/util/AnimationController;->Default:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/laifeng/sdk/util/AnimationController;->Linear:I

    .line 28
    iput v1, p0, Lcom/youku/laifeng/sdk/util/AnimationController;->Accelerate:I

    .line 29
    iput v2, p0, Lcom/youku/laifeng/sdk/util/AnimationController;->Decelerate:I

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/youku/laifeng/sdk/util/AnimationController;->AccelerateDecelerate:I

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/youku/laifeng/sdk/util/AnimationController;->Bounce:I

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/youku/laifeng/sdk/util/AnimationController;->Overshoot:I

    .line 33
    const/4 v0, 0x6

    iput v0, p0, Lcom/youku/laifeng/sdk/util/AnimationController;->Anticipate:I

    .line 34
    const/4 v0, 0x7

    iput v0, p0, Lcom/youku/laifeng/sdk/util/AnimationController;->AnticipateOvershoot:I

    .line 40
    return-void
.end method

.method private baseIn(Landroid/view/View;Landroid/view/animation/Animation;JJ)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;
    .param p3, "durationMillis"    # J
    .param p5, "delayMillis"    # J

    .prologue
    .line 99
    const/4 v3, -0x1

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->setEffect(Landroid/view/animation/Animation;IJJ)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    return-void
.end method

.method private baseOut(Landroid/view/View;Landroid/view/animation/Animation;JJ)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;
    .param p3, "durationMillis"    # J
    .param p5, "delayMillis"    # J

    .prologue
    .line 105
    const/4 v3, -0x1

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->setEffect(Landroid/view/animation/Animation;IJJ)V

    .line 106
    new-instance v0, Lcom/youku/laifeng/sdk/util/AnimationController$MyAnimationListener;

    invoke-direct {v0, p0, p1}, Lcom/youku/laifeng/sdk/util/AnimationController$MyAnimationListener;-><init>(Lcom/youku/laifeng/sdk/util/AnimationController;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    return-void
.end method

.method private setEffect(Landroid/view/animation/Animation;IJJ)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "interpolatorType"    # I
    .param p3, "durationMillis"    # J
    .param p5, "delayMillis"    # J

    .prologue
    .line 66
    packed-switch p2, :pswitch_data_0

    .line 94
    :goto_0
    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    invoke-virtual {p1, p5, p6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 96
    return-void

    .line 68
    :pswitch_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 71
    :pswitch_1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 74
    :pswitch_2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 77
    :pswitch_3
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 80
    :pswitch_4
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 83
    :pswitch_5
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 86
    :pswitch_6
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 89
    :pswitch_7
    new-instance v0, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public fadeIn(Landroid/view/View;JJ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    .line 123
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v3, "animation":Landroid/view/animation/AlphaAnimation;
    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 124
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseIn(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 125
    return-void
.end method

.method public fadeOut(Landroid/view/View;JJ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    .line 128
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v3, "animation":Landroid/view/animation/AlphaAnimation;
    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 129
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseOut(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 130
    return-void
.end method

.method public fromBottomFadeIn(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 222
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-wide v4, p2

    move-wide v6, p4

    .line 223
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseIn(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 224
    return-void
.end method

.method public fromBottomFadeOut(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 227
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-wide v4, p2

    move-wide v6, p4

    .line 228
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseOut(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 229
    return-void
.end method

.method public hide(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public rotateIn(Landroid/view/View;JJ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .local v0, "animation":Landroid/view/animation/RotateAnimation;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-wide v4, p2

    move-wide v6, p4

    .line 159
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseIn(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 160
    return-void
.end method

.method public rotateOut(Landroid/view/View;JJ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 163
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move v4, v1

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .local v0, "animation":Landroid/view/animation/RotateAnimation;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-wide v4, p2

    move-wide v6, p4

    .line 164
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseOut(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 165
    return-void
.end method

.method public scaleIn(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/4 v5, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 148
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .local v0, "animation":Landroid/view/animation/ScaleAnimation;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-wide v4, p2

    move-wide v6, p4

    .line 149
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseIn(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 150
    return-void
.end method

.method public scaleOut(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/4 v5, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 153
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .local v0, "animation":Landroid/view/animation/ScaleAnimation;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-wide v4, p2

    move-wide v6, p4

    .line 154
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseOut(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 155
    return-void
.end method

.method public scaleRotateIn(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 168
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 169
    .local v0, "animation1":Landroid/view/animation/ScaleAnimation;
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/high16 v4, 0x43b40000    # 360.0f

    move v3, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 170
    .local v2, "animation2":Landroid/view/animation/RotateAnimation;
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 171
    .local v5, "animation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 172
    invoke-virtual {v5, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p2

    move-wide v8, p4

    .line 173
    invoke-direct/range {v3 .. v9}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseIn(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 174
    return-void
.end method

.method public scaleRotateOut(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    .line 177
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 178
    .local v0, "animation1":Landroid/view/animation/ScaleAnimation;
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 179
    .local v1, "animation2":Landroid/view/animation/RotateAnimation;
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 180
    .local v5, "animation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 181
    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p2

    move-wide v8, p4

    .line 182
    invoke-direct/range {v3 .. v9}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseOut(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 183
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public slideFadeIn(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 186
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 187
    .local v0, "animation1":Landroid/view/animation/TranslateAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 188
    .local v9, "animation2":Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 189
    .local v3, "animation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 190
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 191
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseIn(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 192
    return-void
.end method

.method public slideFadeInRight(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 204
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 205
    .local v0, "animation1":Landroid/view/animation/TranslateAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v9, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 206
    .local v9, "animation2":Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 207
    .local v3, "animation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 208
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 209
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseIn(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 210
    return-void
.end method

.method public slideFadeOut(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 195
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 196
    .local v0, "animation1":Landroid/view/animation/TranslateAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 197
    .local v9, "animation2":Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 198
    .local v3, "animation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 199
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 200
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseOut(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 201
    return-void
.end method

.method public slideFadeOutRight(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 213
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 214
    .local v0, "animation1":Landroid/view/animation/TranslateAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 215
    .local v9, "animation2":Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 216
    .local v3, "animation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 217
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 218
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseOut(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 219
    return-void
.end method

.method public slideIn(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 133
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-wide v4, p2

    move-wide v6, p4

    .line 134
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseIn(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 135
    return-void
.end method

.method public slideOut(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 138
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-wide v4, p2

    move-wide v6, p4

    .line 139
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseOut(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 140
    return-void
.end method

.method public slideOutUp(Landroid/view/View;JJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 143
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-wide v4, p2

    move-wide v6, p4

    .line 144
    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->baseOut(Landroid/view/View;Landroid/view/animation/Animation;JJ)V

    .line 145
    return-void
.end method

.method public transparent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void
.end method
