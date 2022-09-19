.class public Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;
.super Landroid/widget/FrameLayout;
.source "ScreenShotShareView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$OnDismissListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnComment:Landroid/view/View;

.field private mBtnMore:Landroid/view/View;

.field private mBtnPengyouquan:Landroid/view/View;

.field private mBtnSave:Landroid/view/View;

.field private mBtnShareClickLis:Landroid/view/View$OnClickListener;

.field private mBtnSinalWeibo:Landroid/view/View;

.field private mBtnWeixin:Landroid/view/View;

.field private mDismissLis:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$OnDismissListener;

.field public mFromGuide:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mIsAnimation:Z

.field private mScreenshotPath:Ljava/lang/String;

.field private mShareLayout:Landroid/view/View;

.field public mWebUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBorderPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    .line 232
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mIsAnimation:Z

    .line 134
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->setWillNotDraw(Z)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mScreenshotPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mIsAnimation:Z

    return v0
.end method

.method static synthetic access$202(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mIsAnimation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mDismissLis:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnBack:Landroid/widget/Button;

    return-object v0
.end method

.method private zoomIn()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x12c

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 235
    sget-object v4, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->TAG:Ljava/lang/String;

    const-string v5, "zoomIn"

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4, v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mIsAnimation:Z

    .line 237
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 238
    .local v0, "tran":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 239
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 241
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/high16 v9, -0x40400000    # -1.5f

    move v4, v1

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v1

    move v10, v1

    move v11, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 242
    .local v3, "tBackTran":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v3, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 243
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 246
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$3;

    invoke-direct {v1, p0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 257
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$4;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 266
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnBack:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mShareLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 268
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 143
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 144
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mIsAnimation:Z

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 295
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 296
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 150
    const v0, 0x7f0c0b93

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mImageView:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f0c0b95

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mShareLayout:Landroid/view/View;

    .line 153
    const v0, 0x7f0c0b96

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnWeixin:Landroid/view/View;

    .line 154
    const v0, 0x7f0c0b97

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnPengyouquan:Landroid/view/View;

    .line 155
    const v0, 0x7f0c0b98

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnSinalWeibo:Landroid/view/View;

    .line 156
    const v0, 0x7f0c0b9b

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnMore:Landroid/view/View;

    .line 157
    const v0, 0x7f0c0b99

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnSave:Landroid/view/View;

    .line 158
    const v0, 0x7f0c0b9a

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnComment:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnWeixin:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnPengyouquan:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnSinalWeibo:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnMore:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnSave:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnComment:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x7f0c0b94

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnBack:Landroid/widget/Button;

    .line 170
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnBack:Landroid/widget/Button;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$2;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void
.end method

.method public setOnDismissListener(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$OnDismissListener;)V
    .locals 0
    .param p1, "lis"    # Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$OnDismissListener;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mDismissLis:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$OnDismissListener;

    .line 202
    return-void
.end method

.method public setPlayType(Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 2
    .param p1, "mediaplayer"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnComment:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    if-eqz p1, :cond_0

    .line 207
    const-string v0, "local"

    iget-object v1, p1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnComment:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public setScreenshotPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 194
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenshotPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mScreenshotPath:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mScreenshotPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 218
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->zoomIn()V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->zoomOut()V

    goto :goto_0
.end method

.method public zoomOut()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x12c

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 271
    sget-object v4, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->TAG:Ljava/lang/String;

    const-string v5, "zoomIn"

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4, v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mIsAnimation:Z

    .line 273
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 274
    .local v0, "tran":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 275
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 277
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/high16 v11, -0x40400000    # -1.5f

    move v4, v1

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v1

    move v9, v2

    move v10, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 278
    .local v3, "tBackTran":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v3, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 279
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 281
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$5;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$5;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 290
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mShareLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 292
    return-void
.end method
