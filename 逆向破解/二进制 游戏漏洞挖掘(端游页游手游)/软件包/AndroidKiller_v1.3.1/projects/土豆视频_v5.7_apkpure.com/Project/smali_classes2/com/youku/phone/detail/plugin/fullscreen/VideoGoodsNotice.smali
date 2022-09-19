.class public Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;
.super Landroid/widget/FrameLayout;
.source "VideoGoodsNotice.java"

# interfaces
.implements Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isVerticalScreen:Z

.field private mBtnBuy:Landroid/widget/Button;

.field private mBtnClose:Landroid/widget/ImageView;

.field private mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

.field private mImg:Landroid/widget/ImageView;

.field public mIsShow:Z

.field public mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

.field private mPrice:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mIsShow:Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isVerticalScreen:Z

    return v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    .line 298
    return-void
.end method

.method public hide(Z)V
    .locals 8
    .param p1, "anim"    # Z

    .prologue
    const/4 v7, 0x0

    .line 195
    sget-object v4, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hide anim = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4, v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iput-boolean v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mIsShow:Z

    .line 197
    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p0, v7}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->setVisibility(I)V

    .line 199
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getWidth()I

    move-result v2

    .line 200
    .local v2, "startWidth":I
    const/high16 v4, 0x42740000    # 61.0f

    invoke-static {v4}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    .line 201
    .local v0, "endWidth":I
    new-instance v1, Landroid/animation/IntEvaluator;

    invoke-direct {v1}, Landroid/animation/IntEvaluator;-><init>()V

    .line 202
    .local v1, "mEvaluator":Landroid/animation/IntEvaluator;
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 203
    .local v3, "trans":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 204
    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$5;

    invoke-direct {v4, p0, v2, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$5;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;II)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 217
    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;

    invoke-direct {v4, p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 264
    .end local v0    # "endWidth":I
    .end local v1    # "mEvaluator":Landroid/animation/IntEvaluator;
    .end local v2    # "startWidth":I
    .end local v3    # "trans":Landroid/animation/ValueAnimator;
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->setVisibility(I)V

    .line 258
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

    if-eqz v4, :cond_0

    .line 259
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

    invoke-interface {v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;->onHide()V

    goto :goto_0

    .line 202
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mIsShow:Z

    return v0
.end method

.method public onControllerTransitionEnd(ZZ)V
    .locals 5
    .param p1, "animated"    # Z
    .param p2, "toShow"    # Z

    .prologue
    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v1, 0x0

    .line 278
    sget-object v3, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->TAG:Ljava/lang/String;

    const-string v4, "onControllerTransitionEnd begin"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    if-eqz p2, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 281
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isVerticalScreen:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 282
    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 288
    :goto_1
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->requestLayout()V

    .line 289
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->TAG:Ljava/lang/String;

    const-string v2, "onControllerTransitionEnd end"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void

    .line 281
    :cond_0
    const/high16 v1, 0x428c0000    # 70.0f

    goto :goto_0

    .line 284
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 285
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isVerticalScreen:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 286
    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    move v1, v2

    .line 285
    goto :goto_2
.end method

.method public onControllerTransitionStart(ZZ)V
    .locals 0
    .param p1, "animated"    # Z
    .param p2, "toShow"    # Z

    .prologue
    .line 269
    return-void
.end method

.method public onControllerTransitionStep(FZ)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "toShow"    # Z

    .prologue
    .line 274
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 82
    const v0, 0x7f0c0b9e

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mTitle:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0c0b9f

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mPrice:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0c0b9d

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mImg:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0c0ba0

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mBtnBuy:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mBtnBuy:Landroid/widget/Button;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$2;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0c0ba1

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mBtnClose:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mBtnClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$3;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method public setData(Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;)V
    .locals 3
    .param p1, "goods"    # Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->TAG:Ljava/lang/String;

    const-string v1, "setData the same object"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mImg:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mPrice:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->price:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->price:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->img:Ljava/lang/String;

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$1;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)V

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->market_price:Ljava/lang/String;

    goto :goto_1
.end method

.method public setVerticalScreen(Z)V
    .locals 0
    .param p1, "verticalScreen"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isVerticalScreen:Z

    .line 294
    return-void
.end method

.method public show()V
    .locals 14

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 125
    iput-boolean v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mIsShow:Z

    .line 127
    invoke-virtual {p0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->setVisibility(I)V

    .line 129
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 130
    .local v13, "width":I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 131
    .local v10, "height":I
    invoke-virtual {p0, v13, v10}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->measure(II)V

    .line 133
    const/high16 v3, 0x42740000    # 61.0f

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v12

    .line 134
    .local v12, "startWidth":I
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getMeasuredWidth()I

    move-result v4

    iget-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isVerticalScreen:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x43a40000    # 328.0f

    :goto_0
    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 136
    .local v9, "endWidth":I
    sget-object v3, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "show startWidth = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " endWidth = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 139
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 141
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 142
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 143
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;

    invoke-direct {v1, p0, v12, v9}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;II)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 192
    return-void

    .line 134
    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    .end local v9    # "endWidth":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const v3, 0x43ca8000    # 405.0f

    goto :goto_0
.end method
