.class public Lcom/tudou/adapter/DanmuPreviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "DanmuPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;
    }
.end annotation


# instance fields
.field private count:I

.field private mContext:Landroid/content/Context;

.field private mDanmuHandler:Landroid/os/Handler;

.field private mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/DanmuListResult$DanmuResult;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:[I

.field playOnClickListener:Landroid/view/View$OnClickListener;

.field shareOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/DanmuListResult$DanmuResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "dataset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/DanmuListResult$DanmuResult;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mIndex:[I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->count:I

    .line 41
    new-instance v0, Lcom/tudou/adapter/DanmuPreviewAdapter$1;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/DanmuPreviewAdapter$1;-><init>(Lcom/tudou/adapter/DanmuPreviewAdapter;)V

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuHandler:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/tudou/adapter/DanmuPreviewAdapter$3;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/DanmuPreviewAdapter$3;-><init>(Lcom/tudou/adapter/DanmuPreviewAdapter;)V

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->playOnClickListener:Landroid/view/View$OnClickListener;

    .line 203
    new-instance v0, Lcom/tudou/adapter/DanmuPreviewAdapter$4;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/DanmuPreviewAdapter$4;-><init>(Lcom/tudou/adapter/DanmuPreviewAdapter;)V

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->shareOnClickListener:Landroid/view/View$OnClickListener;

    .line 94
    iput-object p1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 96
    return-void

    .line 39
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/tudou/adapter/DanmuPreviewAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/DanmuPreviewAdapter;

    .prologue
    .line 34
    iget v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->count:I

    return v0
.end method

.method static synthetic access$008(Lcom/tudou/adapter/DanmuPreviewAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/adapter/DanmuPreviewAdapter;

    .prologue
    .line 34
    iget v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->count:I

    return v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/DanmuPreviewAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/DanmuPreviewAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/adapter/DanmuPreviewAdapter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/DanmuPreviewAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mIndex:[I

    return-object v0
.end method

.method private addTextView(ILandroid/widget/LinearLayout;[I)V
    .locals 6
    .param p1, "count"    # I
    .param p2, "view"    # Landroid/widget/LinearLayout;
    .param p3, "a"    # [I

    .prologue
    const/4 v5, -0x2

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 384
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 387
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 388
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 389
    .local v2, "temp":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020ad8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    const/4 v3, 0x1

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 392
    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    aget v3, p3, v0

    if-nez v3, :cond_1

    .line 394
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 398
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setId(I)V

    .line 399
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 401
    .local v1, "lp_Text1":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p2, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    .end local v1    # "lp_Text1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 403
    .end local v2    # "temp":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private addTextViewWithOutAnim(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/widget/LinearLayout;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x2

    .line 407
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 408
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 411
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 412
    .local v2, "temp":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020ad8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    const/4 v3, 0x1

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 415
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 418
    .local v1, "lp_Text1":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    return-void
.end method

.method private beginDanmuCount(Landroid/widget/TextView;I)V
    .locals 8
    .param p1, "tempFinal"    # Landroid/widget/TextView;
    .param p2, "num"    # I

    .prologue
    const-wide/16 v2, 0xc8

    const/4 v7, -0x1

    .line 422
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f040021

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 424
    .local v4, "animEnd":Landroid/view/animation/Animation;
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 425
    new-instance v0, Lcom/tudou/adapter/DanmuPreviewAdapter$6;

    invoke-direct {v0, p0, p1}, Lcom/tudou/adapter/DanmuPreviewAdapter$6;-><init>(Lcom/tudou/adapter/DanmuPreviewAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 441
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f04001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 443
    .local v5, "anim":Landroid/view/animation/Animation;
    if-ne v7, p2, :cond_0

    .line 444
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 449
    :goto_0
    new-instance v0, Lcom/tudou/adapter/DanmuPreviewAdapter$7;

    invoke-direct {v0, p0, p1, v4}, Lcom/tudou/adapter/DanmuPreviewAdapter$7;-><init>(Lcom/tudou/adapter/DanmuPreviewAdapter;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 469
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f040020

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 471
    .local v6, "animBegin":Landroid/view/animation/Animation;
    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 472
    new-instance v0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tudou/adapter/DanmuPreviewAdapter$8;-><init>(Lcom/tudou/adapter/DanmuPreviewAdapter;Landroid/widget/TextView;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 500
    if-ne v7, p2, :cond_1

    .line 501
    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 506
    :goto_1
    return-void

    .line 446
    .end local v6    # "animBegin":Landroid/view/animation/Animation;
    :cond_0
    invoke-virtual {v5, p2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 447
    const/16 v0, 0x320

    add-int/lit8 v1, p2, 0x1

    div-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 504
    .restart local v6    # "animBegin":Landroid/view/animation/Animation;
    :cond_1
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private getDanmuData(Landroid/widget/TextView;ILcom/youku/vo/DanmuListResult$DanmuResult;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "item"    # Lcom/youku/vo/DanmuListResult$DanmuResult;

    .prologue
    const/high16 v0, -0x1000000

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0xff

    .line 230
    iget-object v1, p3, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_body:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v1, p3, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_body:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 238
    new-instance v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;

    invoke-direct {v6, p0}, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;-><init>(Lcom/tudou/adapter/DanmuPreviewAdapter;)V

    .line 239
    .local v6, "mDanmuData":Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 240
    .local v7, "r":Ljava/util/Random;
    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->speed:I

    .line 241
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 267
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->color:I

    .line 270
    :goto_1
    iget v1, v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->color:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    if-gt v2, v0, :cond_2

    const/4 v0, -0x1

    :cond_2
    invoke-virtual {p1, v1, v4, v4, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 274
    iget-object v0, p3, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_body:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget v2, v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->speed:I

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/adapter/DanmuPreviewAdapter;->slideview(Landroid/widget/TextView;IIILcom/youku/vo/DanmuListResult$DanmuResult;)V

    goto :goto_0

    .line 243
    :pswitch_0
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->color:I

    goto :goto_1

    .line 246
    :pswitch_1
    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->color:I

    goto :goto_1

    .line 249
    :pswitch_2
    const/16 v1, 0x99

    invoke-static {v2, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->color:I

    goto :goto_1

    .line 252
    :pswitch_3
    const/16 v1, 0xf1

    invoke-static {v2, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->color:I

    goto :goto_1

    .line 255
    :pswitch_4
    const/16 v1, 0x12

    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->color:I

    goto :goto_1

    .line 258
    :pswitch_5
    const/16 v1, 0xfc

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->color:I

    goto :goto_1

    .line 261
    :pswitch_6
    const/16 v1, 0x8c

    const/16 v2, 0xee

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->color:I

    goto :goto_1

    .line 264
    :pswitch_7
    const/16 v1, 0x86

    invoke-static {v1, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, v6, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->color:I

    goto :goto_1

    .line 241
    nop

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

.method private initArray(Ljava/lang/String;[I)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "a"    # [I

    .prologue
    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 510
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, p2, v0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDataSet:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getIsDanmuVistbility(Lcom/tudou/adapter/DanmuPreviewItemLayout;)Z
    .locals 1
    .param p1, "DanmuItem"    # Lcom/tudou/adapter/DanmuPreviewItemLayout;

    .prologue
    .line 376
    iget-object v0, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDataSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 116
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 121
    if-nez p2, :cond_2

    .line 122
    new-instance v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v7, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/tudou/adapter/DanmuPreviewItemLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    .line 127
    .end local p2    # "convertView":Landroid/view/View;
    :goto_0
    const/4 v4, 0x0

    .line 129
    .local v4, "item":Lcom/youku/vo/DanmuListResult$DanmuResult;
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "item":Lcom/youku/vo/DanmuListResult$DanmuResult;
    check-cast v4, Lcom/youku/vo/DanmuListResult$DanmuResult;

    .line 130
    .restart local v4    # "item":Lcom/youku/vo/DanmuListResult$DanmuResult;
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    invoke-virtual {v6, v4}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object v6, v4, Lcom/youku/vo/DanmuListResult$DanmuResult;->image_448_252:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 132
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/tudou/ui/activity/DanmuPreview;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DanmuPreview;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v4, Lcom/youku/vo/DanmuListResult$DanmuResult;->image_448_252:Ljava/lang/String;

    iget-object v8, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v8, v8, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mThumbnail:Lcom/youku/widget/YoukuImageView;

    invoke-virtual {v6, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 135
    :cond_0
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mVideoTitle:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/youku/vo/DanmuListResult$DanmuResult;->short_discription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :try_start_0
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mPlayCount:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/youku/vo/DanmuListResult$DanmuResult;->played_times:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/youku/util/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u64ad\u653e"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmuLayout:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 143
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmuLayout:Landroid/view/View;

    new-instance v7, Lcom/tudou/adapter/DanmuPreviewAdapter$2;

    invoke-direct {v7, p0, p1}, Lcom/tudou/adapter/DanmuPreviewAdapter$2;-><init>(Lcom/tudou/adapter/DanmuPreviewAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mShare:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 154
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mShare:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->shareOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const/4 v5, 0x1

    .line 156
    .local v5, "length":I
    const-string v1, "0"

    .line 157
    .local v1, "danmuStr":Ljava/lang/String;
    iget-object v6, v4, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_num:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 158
    iget-object v6, v4, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_num:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 159
    iget-object v1, v4, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_num:Ljava/lang/String;

    .line 162
    :cond_1
    add-int/lit8 v6, v5, 0x3

    new-array v0, v6, [I

    .line 163
    .local v0, "a":[I
    invoke-direct {p0, v1, v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->initArray(Ljava/lang/String;[I)V

    .line 164
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmuCount:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 166
    iget-boolean v6, v4, Lcom/youku/vo/DanmuListResult$DanmuResult;->isCountShowed:Z

    if-nez v6, :cond_4

    .line 167
    iget-object v6, v4, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_num:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v7, v7, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmuCount:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6, v7, v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->addTextView(ILandroid/widget/LinearLayout;[I)V

    .line 169
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmuCount:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 170
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmuCount:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aget v7, v0, v3

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Lcom/tudou/adapter/DanmuPreviewAdapter;->beginDanmuCount(Landroid/widget/TextView;I)V

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 124
    .end local v0    # "a":[I
    .end local v1    # "danmuStr":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "item":Lcom/youku/vo/DanmuListResult$DanmuResult;
    .end local v5    # "length":I
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    check-cast p2, Lcom/tudou/adapter/DanmuPreviewItemLayout;

    .end local p2    # "convertView":Landroid/view/View;
    iput-object p2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    goto/16 :goto_0

    .line 139
    .restart local v4    # "item":Lcom/youku/vo/DanmuListResult$DanmuResult;
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mPlayCount:Landroid/widget/TextView;

    const-string v7, "0\u6b21\u64ad\u653e"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 175
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":[I
    .restart local v1    # "danmuStr":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "length":I
    :cond_3
    iput-boolean v10, v4, Lcom/youku/vo/DanmuListResult$DanmuResult;->isCountShowed:Z

    .line 180
    .end local v3    # "i":I
    :goto_3
    if-nez p1, :cond_5

    .line 181
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    invoke-virtual {p0, v6, v9}, Lcom/tudou/adapter/DanmuPreviewAdapter;->setDanmuVisibility(Lcom/tudou/adapter/DanmuPreviewItemLayout;I)V

    .line 182
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu1:Landroid/widget/TextView;

    invoke-direct {p0, v6, v9, v4}, Lcom/tudou/adapter/DanmuPreviewAdapter;->getDanmuData(Landroid/widget/TextView;ILcom/youku/vo/DanmuListResult$DanmuResult;)V

    .line 183
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu2:Landroid/widget/TextView;

    invoke-direct {p0, v6, v10, v4}, Lcom/tudou/adapter/DanmuPreviewAdapter;->getDanmuData(Landroid/widget/TextView;ILcom/youku/vo/DanmuListResult$DanmuResult;)V

    .line 184
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu3:Landroid/widget/TextView;

    const/4 v7, 0x2

    invoke-direct {p0, v6, v7, v4}, Lcom/tudou/adapter/DanmuPreviewAdapter;->getDanmuData(Landroid/widget/TextView;ILcom/youku/vo/DanmuListResult$DanmuResult;)V

    .line 185
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu4:Landroid/widget/TextView;

    const/4 v7, 0x3

    invoke-direct {p0, v6, v7, v4}, Lcom/tudou/adapter/DanmuPreviewAdapter;->getDanmuData(Landroid/widget/TextView;ILcom/youku/vo/DanmuListResult$DanmuResult;)V

    .line 186
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu5:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7, v4}, Lcom/tudou/adapter/DanmuPreviewAdapter;->getDanmuData(Landroid/widget/TextView;ILcom/youku/vo/DanmuListResult$DanmuResult;)V

    .line 190
    :goto_4
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    return-object v6

    .line 177
    :cond_4
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmuCount:Landroid/widget/LinearLayout;

    iget-object v7, v4, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_num:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/tudou/adapter/DanmuPreviewAdapter;->addTextViewWithOutAnim(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_3

    .line 188
    :cond_5
    iget-object v6, p0, Lcom/tudou/adapter/DanmuPreviewAdapter;->mDanmuPreviewItemLayout:Lcom/tudou/adapter/DanmuPreviewItemLayout;

    const/16 v7, 0x8

    invoke-virtual {p0, v6, v7}, Lcom/tudou/adapter/DanmuPreviewAdapter;->setDanmuVisibility(Lcom/tudou/adapter/DanmuPreviewItemLayout;I)V

    goto :goto_4
.end method

.method public setDanmuVisibility(Lcom/tudou/adapter/DanmuPreviewItemLayout;I)V
    .locals 7
    .param p1, "DanmuItem"    # Lcom/tudou/adapter/DanmuPreviewItemLayout;
    .param p2, "visibility"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 312
    invoke-virtual {p1}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DanmuListResult$DanmuResult;

    .line 314
    .local v0, "item":Lcom/youku/vo/DanmuListResult$DanmuResult;
    iget-object v1, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_body:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    if-nez p2, :cond_0

    .line 315
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu1:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :cond_0
    iget-object v1, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_body:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    if-nez p2, :cond_1

    .line 318
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu2:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    :cond_1
    iget-object v1, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_body:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_2

    if-nez p2, :cond_2

    .line 321
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu3:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    :cond_2
    iget-object v1, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_body:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_3

    if-nez p2, :cond_3

    .line 324
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu4:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    :cond_3
    const/4 v1, 0x5

    iget-object v2, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_body:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-nez p2, :cond_4

    .line 327
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu5:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :cond_4
    const/16 v1, 0x8

    if-ne v1, p2, :cond_5

    .line 331
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu1:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu2:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu3:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu4:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu5:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 337
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 338
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 339
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu4:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 340
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu5:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 373
    :goto_0
    return-void

    .line 342
    :cond_5
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu1:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->getDanmuData(Landroid/widget/TextView;ILcom/youku/vo/DanmuListResult$DanmuResult;)V

    .line 343
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu2:Landroid/widget/TextView;

    invoke-direct {p0, v1, v3, v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->getDanmuData(Landroid/widget/TextView;ILcom/youku/vo/DanmuListResult$DanmuResult;)V

    .line 344
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu3:Landroid/widget/TextView;

    invoke-direct {p0, v1, v4, v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->getDanmuData(Landroid/widget/TextView;ILcom/youku/vo/DanmuListResult$DanmuResult;)V

    .line 345
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu4:Landroid/widget/TextView;

    invoke-direct {p0, v1, v5, v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->getDanmuData(Landroid/widget/TextView;ILcom/youku/vo/DanmuListResult$DanmuResult;)V

    .line 346
    iget-object v1, p1, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu5:Landroid/widget/TextView;

    invoke-direct {p0, v1, v6, v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->getDanmuData(Landroid/widget/TextView;ILcom/youku/vo/DanmuListResult$DanmuResult;)V

    goto :goto_0
.end method

.method public slideview(Landroid/widget/TextView;IIILcom/youku/vo/DanmuListResult$DanmuResult;)V
    .locals 9
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "duration"    # I
    .param p3, "offset"    # I
    .param p4, "i"    # I
    .param p5, "item"    # Lcom/youku/vo/DanmuListResult$DanmuResult;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x2

    .line 280
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 284
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 285
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 286
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 287
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 288
    new-instance v1, Lcom/tudou/adapter/DanmuPreviewAdapter$5;

    invoke-direct {v1, p0, p4, p5, p1}, Lcom/tudou/adapter/DanmuPreviewAdapter$5;-><init>(Lcom/tudou/adapter/DanmuPreviewAdapter;ILcom/youku/vo/DanmuListResult$DanmuResult;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 307
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    return-void
.end method
