.class Lcom/youku/widget/TabPageIndicator$TabView;
.super Landroid/widget/RelativeLayout;
.source "TabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private bottom_line:Landroid/widget/ImageView;

.field private mDefaultItemLayoutResId:I

.field private mIndex:I

.field private rootview:Landroid/view/View;

.field private tabline:Landroid/widget/ImageView;

.field private textview:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/youku/widget/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/youku/widget/TabPageIndicator;Landroid/content/Context;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "itemLayoutId"    # I

    .prologue
    .line 362
    iput-object p1, p0, Lcom/youku/widget/TabPageIndicator$TabView;->this$0:Lcom/youku/widget/TabPageIndicator;

    .line 363
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 360
    const v1, 0x7f030112

    iput v1, p0, Lcom/youku/widget/TabPageIndicator$TabView;->mDefaultItemLayoutResId:I

    .line 364
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 365
    iput p3, p0, Lcom/youku/widget/TabPageIndicator$TabView;->mDefaultItemLayoutResId:I

    .line 367
    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 368
    .local v0, "li":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/youku/widget/TabPageIndicator$TabView;->mDefaultItemLayoutResId:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/TabPageIndicator$TabView;->rootview:Landroid/view/View;

    .line 369
    invoke-direct {p0}, Lcom/youku/widget/TabPageIndicator$TabView;->initView()V

    .line 370
    return-void
.end method

.method static synthetic access$302(Lcom/youku/widget/TabPageIndicator$TabView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/TabPageIndicator$TabView;
    .param p1, "x1"    # I

    .prologue
    .line 354
    iput p1, p0, Lcom/youku/widget/TabPageIndicator$TabView;->mIndex:I

    return p1
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->rootview:Landroid/view/View;

    const v1, 0x7f0c04e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->textview:Landroid/widget/TextView;

    .line 374
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->rootview:Landroid/view/View;

    const v1, 0x7f0c02d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->bottom_line:Landroid/widget/ImageView;

    .line 375
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->rootview:Landroid/view/View;

    const v1, 0x7f0c04e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->tabline:Landroid/widget/ImageView;

    .line 376
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->mIndex:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->textview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 383
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->this$0:Lcom/youku/widget/TabPageIndicator;

    invoke-static {v0}, Lcom/youku/widget/TabPageIndicator;->access$400(Lcom/youku/widget/TabPageIndicator;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/youku/widget/TabPageIndicator$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/youku/widget/TabPageIndicator$TabView;->this$0:Lcom/youku/widget/TabPageIndicator;

    invoke-static {v1}, Lcom/youku/widget/TabPageIndicator;->access$400(Lcom/youku/widget/TabPageIndicator;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->this$0:Lcom/youku/widget/TabPageIndicator;

    invoke-static {v0}, Lcom/youku/widget/TabPageIndicator;->access$400(Lcom/youku/widget/TabPageIndicator;)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 386
    :cond_0
    return-void
.end method

.method public setBottomLineVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->bottom_line:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->bottom_line:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "rigth"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->textview:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 406
    return-void
.end method

.method public setLineVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->tabline:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->tabline:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->textview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator$TabView;->textview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    return-void
.end method
