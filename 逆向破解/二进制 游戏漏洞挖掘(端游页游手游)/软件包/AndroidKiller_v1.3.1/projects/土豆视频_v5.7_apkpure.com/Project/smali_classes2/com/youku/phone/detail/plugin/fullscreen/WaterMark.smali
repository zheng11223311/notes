.class public Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;
.super Landroid/widget/FrameLayout;
.source "WaterMark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;
    }
.end annotation


# static fields
.field private static final DEFAULT_SHOW_VIDEO_MARK_TIME:J = 0x1388L

.field private static final DEFAULT_SWITCH_ANIM_DURATION:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAttentionReceiver:Landroid/content/BroadcastReceiver;

.field private mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

.field private mCurInAnim:Lcom/youku/util/Rotate3dAnimation;

.field private mCurOutAnim:Lcom/youku/util/Rotate3dAnimation;

.field private mIsRotateAnimRunning:Z

.field private mMarkType:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

.field private mTudouMark:Landroid/widget/ImageView;

.field private mVideoDetail:Lcom/youku/vo/NewVideoDetail;

.field private mVideoMark:Landroid/view/View;

.field private mVideoMarkPic:Landroid/widget/ImageView;

.field private mVideoMarkTitle:Landroid/widget/TextView;

.field private mVideoType:Lcom/tudou/android/Youku$VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    .line 51
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mIsRotateAnimRunning:Z

    .line 64
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->TUDOU:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mMarkType:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    .line 287
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$7;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$7;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mAttentionReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)Lcom/tudou/detail/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setAttention(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;
    .param p1, "x1"    # Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->switchMarkType(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mIsRotateAnimRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;
    .param p1, "x1"    # Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setShowMarkType(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;)V

    return-void
.end method

.method static synthetic access$502(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/util/Rotate3dAnimation;)Lcom/youku/util/Rotate3dAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;
    .param p1, "x1"    # Lcom/youku/util/Rotate3dAnimation;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mCurOutAnim:Lcom/youku/util/Rotate3dAnimation;

    return-object p1
.end method

.method static synthetic access$602(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/util/Rotate3dAnimation;)Lcom/youku/util/Rotate3dAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;
    .param p1, "x1"    # Lcom/youku/util/Rotate3dAnimation;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mCurInAnim:Lcom/youku/util/Rotate3dAnimation;

    return-object p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setAttention(Z)V
    .locals 4
    .param p1, "tAttented"    # Z

    .prologue
    .line 325
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getModel()Lcom/tudou/detail/DetailModel;

    move-result-object v0

    .line 327
    .local v0, "tModel":Lcom/tudou/detail/DetailModel;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$8;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$8;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/tudou/detail/DetailModel;->setVideoAttentionAsync(Landroid/app/Activity;Lcom/youku/vo/NewVideoDetail;ZLcom/tudou/detail/DetailModel$OnSetAttentionComplete;)V

    .line 362
    :cond_0
    return-void
.end method

.method private setShowMarkType(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;)V
    .locals 3
    .param p1, "type"    # Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 262
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mMarkType:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    .line 263
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->TUDOU:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    if-ne p1, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mTudouMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMark:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mTudouMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMark:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchMarkType(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;Z)V
    .locals 9
    .param p1, "type"    # Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;
    .param p2, "animate"    # Z

    .prologue
    .line 210
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchMarkType type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " animate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-eqz p2, :cond_2

    .line 212
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mMarkType:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    if-eq v2, p1, :cond_0

    .line 213
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->VIDEO:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    if-ne p1, v2, :cond_1

    .line 214
    new-instance v0, Lcom/youku/util/Rotate3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/youku/util/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 215
    .local v0, "rotateOutAnim":Lcom/youku/util/Rotate3dAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/youku/util/Rotate3dAnimation;->setDuration(J)V

    .line 216
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mTudouMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 217
    new-instance v1, Lcom/youku/util/Rotate3dAnimation;

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/youku/util/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 218
    .local v1, "rotateInAnim":Lcom/youku/util/Rotate3dAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/youku/util/Rotate3dAnimation;->setDuration(J)V

    .line 219
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/youku/util/Rotate3dAnimation;->setStartOffset(J)V

    .line 220
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMark:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 222
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$5;

    invoke-direct {v2, p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$5;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;)V

    invoke-virtual {v0, v2}, Lcom/youku/util/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 231
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mCurOutAnim:Lcom/youku/util/Rotate3dAnimation;

    .line 232
    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mCurInAnim:Lcom/youku/util/Rotate3dAnimation;

    .line 259
    .end local v0    # "rotateOutAnim":Lcom/youku/util/Rotate3dAnimation;
    .end local v1    # "rotateInAnim":Lcom/youku/util/Rotate3dAnimation;
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    new-instance v0, Lcom/youku/util/Rotate3dAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/youku/util/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 235
    .restart local v0    # "rotateOutAnim":Lcom/youku/util/Rotate3dAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/youku/util/Rotate3dAnimation;->setDuration(J)V

    .line 236
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMark:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    new-instance v1, Lcom/youku/util/Rotate3dAnimation;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/youku/util/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 238
    .restart local v1    # "rotateInAnim":Lcom/youku/util/Rotate3dAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/youku/util/Rotate3dAnimation;->setDuration(J)V

    .line 239
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/youku/util/Rotate3dAnimation;->setStartOffset(J)V

    .line 240
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mTudouMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 242
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$6;

    invoke-direct {v2, p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$6;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;)V

    invoke-virtual {v0, v2}, Lcom/youku/util/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 252
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mCurOutAnim:Lcom/youku/util/Rotate3dAnimation;

    .line 253
    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mCurInAnim:Lcom/youku/util/Rotate3dAnimation;

    goto :goto_0

    .line 257
    .end local v0    # "rotateOutAnim":Lcom/youku/util/Rotate3dAnimation;
    .end local v1    # "rotateInAnim":Lcom/youku/util/Rotate3dAnimation;
    :cond_2
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setShowMarkType(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 178
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->TAG:Ljava/lang/String;

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mCurInAnim:Lcom/youku/util/Rotate3dAnimation;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mCurInAnim:Lcom/youku/util/Rotate3dAnimation;

    invoke-virtual {v0}, Lcom/youku/util/Rotate3dAnimation;->cancel()V

    .line 181
    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mCurInAnim:Lcom/youku/util/Rotate3dAnimation;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mCurOutAnim:Lcom/youku/util/Rotate3dAnimation;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mCurOutAnim:Lcom/youku/util/Rotate3dAnimation;

    invoke-virtual {v0}, Lcom/youku/util/Rotate3dAnimation;->cancel()V

    .line 185
    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mCurOutAnim:Lcom/youku/util/Rotate3dAnimation;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMark:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 188
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mTudouMark:Landroid/widget/ImageView;

    const v1, 0x7f0203ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mTudouMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 190
    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    .line 191
    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 192
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMarkTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMarkPic:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, v3}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 195
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, v3}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 197
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tudou/detail/widget/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->TUDOU:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setShowMarkType(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;)V

    .line 199
    return-void
.end method

.method public isFilledWithData()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRotateAnimRunning()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mIsRotateAnimRunning:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 313
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public onAttentionChange(Z)V
    .locals 2
    .param p1, "tAttented"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 300
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tudou/detail/widget/SwitchButton;->setEnabled(Z)V

    .line 302
    :cond_0
    return-void

    .line 300
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 320
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 275
    const v0, 0x7f0c0bfe

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mTudouMark:Landroid/widget/ImageView;

    .line 276
    const v0, 0x7f0c0bff

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMark:Landroid/view/View;

    .line 278
    const v0, 0x7f0c0c00

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMarkPic:Landroid/widget/ImageView;

    .line 279
    const v0, 0x7f0c0c01

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMarkTitle:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f0c0c02

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/SwitchButton;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    .line 281
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    const v1, 0x7f020a59

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableAtte(I)V

    .line 282
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    const v1, 0x7f020a58

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableNormal(I)V

    .line 284
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->TUDOU:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setShowMarkType(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;)V

    .line 285
    return-void
.end method

.method public setData(Lcom/youku/vo/NewVideoDetail;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 9
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "info"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v8, 0x1

    .line 72
    sget-object v5, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setData type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 74
    const-string v2, ""

    .line 75
    .local v2, "tTitle":Ljava/lang/String;
    const-string v3, ""

    .line 76
    .local v3, "tUserName":Ljava/lang/String;
    const-string v4, ""

    .line 77
    .local v4, "tUserPic":Ljava/lang/String;
    const-string v5, "local"

    invoke-virtual {p2}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 145
    :cond_0
    :goto_0
    sget-object v6, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mVideoType = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    invoke-virtual {v5}, Lcom/tudou/android/Youku$VideoType;->name()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " tTitle = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " tUserName = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " tUserPic = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    if-eqz v5, :cond_2

    .line 148
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v6, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v5, v6, :cond_8

    .line 149
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMarkTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    :goto_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMarkPic:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 155
    :cond_2
    return-void

    .line 83
    :cond_3
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p2}, Lcom/youku/player/module/VideoUrlInfo;->isExclusiveLogo()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v5, v5, Lcom/youku/vo/NewVideoDetail$Detail;->exclusive_logo:I

    if-ne v5, v8, :cond_6

    .line 85
    :cond_4
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mTudouMark:Landroid/widget/ImageView;

    const v6, 0x7f0203ec

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :goto_3
    invoke-static {p1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    .line 90
    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v5, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    .line 91
    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v5, Lcom/youku/vo/NewVideoDetail$Detail;->username:Ljava/lang/String;

    .line 92
    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v5, Lcom/youku/vo/NewVideoDetail$Detail;->channel_pic:Ljava/lang/String;

    .line 93
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v5, v8}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 96
    .local v0, "activity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v0, :cond_5

    .line 97
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getModel()Lcom/tudou/detail/DetailModel;

    move-result-object v1

    .line 98
    .local v1, "model":Lcom/tudou/detail/DetailModel;
    if-eqz v1, :cond_5

    .line 99
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v5, v8}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 100
    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$1;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)V

    invoke-virtual {v1, v0, p1, v5}, Lcom/tudou/detail/DetailModel;->getAttentionAsync(Landroid/app/Activity;Lcom/youku/vo/NewVideoDetail;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    .line 124
    .end local v1    # "model":Lcom/tudou/detail/DetailModel;
    :cond_5
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    new-instance v6, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$2;

    invoke-direct {v6, p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/vo/NewVideoDetail;)V

    invoke-virtual {v5, v6}, Lcom/tudou/detail/widget/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 87
    .end local v0    # "activity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_6
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mTudouMark:Landroid/widget/ImageView;

    const v6, 0x7f0203ea

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 145
    :cond_7
    const-string v5, " null"

    goto/16 :goto_1

    .line 150
    :cond_8
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v6, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v6, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    if-ne v5, v6, :cond_1

    .line 151
    :cond_9
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mVideoMarkTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setSubscriptionVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mBtnSubscription:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/widget/SwitchButton;->setVisibility(I)V

    .line 308
    :cond_0
    return-void
.end method

.method public startRotateAnimation()V
    .locals 4

    .prologue
    .line 158
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRotateAnimation mMarkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mMarkType:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$MarkType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsRotateAnimRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mIsRotateAnimRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isRotateAnimRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->mIsRotateAnimRunning:Z

    .line 161
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$3;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)V

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->post(Ljava/lang/Runnable;)Z

    .line 167
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$4;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    :cond_0
    return-void
.end method
