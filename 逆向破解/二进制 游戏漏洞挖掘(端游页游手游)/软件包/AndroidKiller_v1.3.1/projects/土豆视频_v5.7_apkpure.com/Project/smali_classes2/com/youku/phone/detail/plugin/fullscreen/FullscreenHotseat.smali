.class public Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;
.super Landroid/widget/FrameLayout;
.source "FullscreenHotseat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;
    }
.end annotation


# static fields
.field private static LEFT_MARGIN:I

.field private static final TAG:Ljava/lang/String;

.field private static TOTAL_HEIGHT:I


# instance fields
.field private mAnno:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

.field private mBtnScreenShot:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

.field public mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

.field private mCallbacks:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

.field private mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

.field private mHotseatItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHotseatRect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mHotseatTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInnerView:Landroid/widget/RelativeLayout;

.field private mIsExpanded:Z

.field private mIsExpanding:Z

.field private mItemClickLis:Landroid/view/View$OnClickListener;

.field private mItemTouchLis:Landroid/view/View$OnTouchListener;

.field private mNeedHotseatCount:I

.field private mPoint:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;"
        }
    .end annotation
.end field

.field mVideoRecordEnable:Z

.field private mVotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private vid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->TAG:Ljava/lang/String;

    .line 42
    sput v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->TOTAL_HEIGHT:I

    .line 43
    sput v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->LEFT_MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatItems:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatRect:Ljava/util/ArrayList;

    .line 57
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatTypes:Ljava/util/ArrayList;

    .line 67
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mIsExpanded:Z

    .line 68
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mIsExpanding:Z

    .line 70
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    .line 90
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$1;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mItemClickLis:Landroid/view/View$OnClickListener;

    .line 106
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$2;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mItemTouchLis:Landroid/view/View$OnTouchListener;

    .line 148
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mInflater:Landroid/view/LayoutInflater;

    .line 149
    const/high16 v0, 0x43700000    # 240.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    sput v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->TOTAL_HEIGHT:I

    .line 150
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    sput v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->LEFT_MARGIN:I

    .line 151
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "detail.videorecord.enable"

    invoke-static {v0, v1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mIsExpanding:Z

    return v0
.end method

.method static synthetic access$002(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mIsExpanding:Z

    return p1
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mCallbacks:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatRect:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mInnerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnScreenShot:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    return-object v0
.end method

.method private computePosition(I)V
    .locals 8
    .param p1, "count"    # I

    .prologue
    const/4 v7, 0x0

    .line 457
    mul-int/lit8 v4, p1, 0x28

    int-to-float v4, v4

    invoke-static {v4}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v4

    add-int/lit8 v5, p1, -0x1

    mul-int/lit8 v5, v5, 0x14

    int-to-float v5, v5

    invoke-static {v5}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v5

    add-int v3, v4, v5

    .line 458
    .local v3, "tNeedHeight":I
    sget v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->TOTAL_HEIGHT:I

    sub-int/2addr v4, v3

    div-int/lit8 v2, v4, 0x2

    .line 459
    .local v2, "tFirstPosY":I
    sget-object v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computePosition count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tNeedHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tFirstPosY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 462
    new-instance v1, Landroid/graphics/Rect;

    sget v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->LEFT_MARGIN:I

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v5, v2

    invoke-direct {v1, v4, v5, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 463
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatRect:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    .end local v1    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private setupViews()V
    .locals 12

    .prologue
    const/4 v7, 0x4

    const/4 v11, -0x2

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 397
    sget-object v8, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->TAG:Ljava/lang/String;

    const-string v9, "setupViews"

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->clearViews()V

    .line 399
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mPoint:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mPoint:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 400
    iget v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    .line 401
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatTypes:Ljava/util/ArrayList;

    sget-object v9, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_0
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-virtual {v8}, Lcom/tudou/detail/vo/GoodsInfo;->getCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 404
    iget v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    .line 405
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatTypes:Ljava/util/ArrayList;

    sget-object v9, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_1
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mAnno:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mAnno:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 408
    iget v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    .line 409
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatTypes:Ljava/util/ArrayList;

    sget-object v9, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_2
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVotes:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVotes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 412
    iget v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    .line 413
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatTypes:Ljava/util/ArrayList;

    sget-object v9, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_3
    sget-object v8, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setupViews mNeedHotseatCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setRotation(F)V

    .line 418
    iget v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    if-nez v8, :cond_6

    .line 419
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v7, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 420
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v7, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setTitleVisible(I)V

    .line 421
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v8, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {v7, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 454
    :cond_5
    :goto_0
    return-void

    .line 422
    :cond_6
    iget v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 423
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v5, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 424
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-virtual {v8, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setType(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;)V

    .line 425
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v5, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setTitleVisible(I)V

    .line 426
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v8, :cond_7

    :goto_1
    invoke-virtual {v5, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    goto :goto_0

    :cond_7
    move v6, v7

    goto :goto_1

    .line 428
    :cond_8
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v8, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 429
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v8, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setTitleVisible(I)V

    .line 430
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    sget-object v9, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->EXPAND:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-virtual {v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setType(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;)V

    .line 431
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-boolean v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v9, :cond_9

    move v7, v6

    :cond_9
    invoke-virtual {v8, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 433
    iget v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    invoke-direct {p0, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->computePosition(I)V

    .line 434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatTypes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 435
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatTypes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    .line 437
    .local v4, "type":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030260

    invoke-virtual {v7, v8, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .line 438
    .local v1, "item":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    invoke-virtual {v1, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setTitleVisible(I)V

    .line 439
    invoke-virtual {v1, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setType(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;)V

    .line 440
    invoke-virtual {v1, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 441
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mItemClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mItemTouchLis:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 444
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 445
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatRect:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 446
    .local v3, "rect":Landroid/graphics/Rect;
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 447
    iget v7, v3, Landroid/graphics/Rect;->top:I

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 448
    sget-object v7, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "leftMargin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", topMargin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 479
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->clearViews()V

    .line 480
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->vid:Ljava/lang/String;

    .line 481
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVotes:Ljava/util/ArrayList;

    .line 482
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mAnno:Ljava/util/ArrayList;

    .line 483
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mPoint:Ljava/util/ArrayList;

    .line 484
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    .line 485
    return-void
.end method

.method public clearViews()V
    .locals 4

    .prologue
    .line 468
    const/4 v2, 0x0

    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    .line 469
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setRotation(F)V

    .line 470
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatTypes:Ljava/util/ArrayList;

    .line 471
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .line 472
    .local v1, "item":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 474
    .end local v1    # "item":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatItems:Ljava/util/ArrayList;

    .line 475
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatRect:Ljava/util/ArrayList;

    .line 476
    return-void
.end method

.method public collapse(ZZ)V
    .locals 12
    .param p1, "anim"    # Z
    .param p2, "showController"    # Z

    .prologue
    const-wide/16 v10, 0xc8

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 277
    iput-boolean v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mIsExpanded:Z

    .line 278
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mIsExpanding:Z

    .line 279
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setPivotX(F)V

    .line 280
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setPivotY(F)V

    .line 281
    if-eqz p1, :cond_1

    .line 282
    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 283
    .local v2, "rotate":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$7;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$7;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 293
    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;

    invoke-direct {v4, p0, p2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;Z)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 312
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 314
    new-array v4, v8, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 315
    .local v3, "tran":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$9;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 342
    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$10;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$10;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 382
    .end local v2    # "rotate":Landroid/animation/ValueAnimator;
    .end local v3    # "tran":Landroid/animation/ValueAnimator;
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setRotation(F)V

    .line 365
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .line 366
    .local v1, "item":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setAlpha(F)V

    .line 367
    invoke-virtual {v1, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    goto :goto_1

    .line 369
    .end local v1    # "item":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    :cond_2
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mCallbacks:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    if-eqz v4, :cond_3

    .line 370
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mCallbacks:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    invoke-interface {v4, v7, p2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;->onHotseatExpand(ZZ)V

    .line 372
    :cond_3
    if-nez p2, :cond_4

    .line 373
    invoke-virtual {p0, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setVisibility(I)V

    .line 375
    :cond_4
    iput-boolean v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mIsExpanding:Z

    .line 376
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v4, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setTitleVisible(I)V

    .line 377
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnScreenShot:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v4, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 378
    iget-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v4, :cond_0

    .line 379
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v4, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    goto :goto_0

    .line 282
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 314
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 386
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 387
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 388
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mIsExpanded:Z

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {p0, v2, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->collapse(ZZ)V

    .line 390
    const/4 v0, 0x1

    .line 393
    :cond_0
    return v0
.end method

.method public expand()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 193
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mIsExpanded:Z

    .line 194
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mIsExpanding:Z

    .line 195
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setPivotX(F)V

    .line 196
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setPivotY(F)V

    .line 197
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnScreenShot:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v2, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 198
    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v2, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 201
    :cond_0
    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 202
    .local v1, "rotate":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$3;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$4;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 222
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 224
    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 225
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$5;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$5;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 252
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$6;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$6;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 272
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 273
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 274
    return-void

    .line 201
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 224
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getBtnExpand()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    return-object v0
.end method

.method public getBtnScreenShot()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnScreenShot:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "count":I
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mHotseatTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 79
    :goto_0
    return v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "tType":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v0, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    .line 87
    :cond_0
    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mIsExpanded:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 169
    const v0, 0x7f0c0b8d

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnScreenShot:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .line 170
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnScreenShot:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setTitleVisible(I)V

    .line 171
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnScreenShot:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->SCREENSHOT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setType(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;)V

    .line 172
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnScreenShot:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mItemClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnScreenShot:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mItemTouchLis:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    const v0, 0x7f0c0b8f

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .line 176
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setTitleVisible(I)V

    .line 177
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VIDEO_RECORD:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setType(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;)V

    .line 178
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mItemClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mItemTouchLis:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 182
    const v0, 0x7f0c0b8e

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .line 183
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->EXPAND:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setType(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;)V

    .line 184
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setTitleVisible(I)V

    .line 186
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mItemClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnExpand:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mItemTouchLis:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    const v0, 0x7f0c0b8b

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mInnerView:Landroid/widget/RelativeLayout;

    .line 190
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setCallbacks(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;)V
    .locals 0
    .param p1, "call"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mCallbacks:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    .line 164
    return-void
.end method

.method public setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/tudou/detail/vo/GoodsInfo;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    .line 494
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setupViews()V

    .line 495
    return-void
.end method

.method public setHdInfos(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .line 499
    .local p2, "votes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo;>;"
    .local p3, "annos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/Annotation;>;"
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVotes:Ljava/util/ArrayList;

    .line 500
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mAnno:Ljava/util/ArrayList;

    .line 502
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setupViews()V

    .line 503
    return-void
.end method

.method public setPoint(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mPoint:Ljava/util/ArrayList;

    .line 489
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setupViews()V

    .line 490
    return-void
.end method

.method public showScreenshotItem(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x4

    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 117
    if-eqz p1, :cond_5

    .line 118
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnScreenShot:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v3, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 119
    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    if-nez v3, :cond_1

    .line 120
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 130
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 122
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnScreenShot:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    goto :goto_1
.end method

.method public showVideoRecordItem(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 133
    if-eqz p1, :cond_5

    .line 134
    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    if-nez v3, :cond_1

    .line 135
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 144
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 135
    goto :goto_0

    .line 136
    :cond_1
    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mNeedHotseatCount:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 137
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    goto :goto_1
.end method
