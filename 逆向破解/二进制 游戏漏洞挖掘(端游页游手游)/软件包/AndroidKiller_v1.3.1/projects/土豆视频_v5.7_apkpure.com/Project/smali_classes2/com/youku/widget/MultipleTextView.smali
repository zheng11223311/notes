.class public Lcom/youku/widget/MultipleTextView;
.super Landroid/widget/RelativeLayout;
.source "MultipleTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private drawablePadding:F

.field private layout_width:I

.field private lineMargin:I

.field private listener:Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;

.field private textBackground:Landroid/graphics/drawable/Drawable;

.field private textColor:I

.field private textPaddingBottom:I

.field private textPaddingLeft:I

.field private textPaddingRight:I

.field private textPaddingTop:I

.field private textSize:F

.field private wordMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object p1, p0, Lcom/youku/widget/MultipleTextView;->context:Landroid/content/Context;

    .line 47
    sget-object v7, Lcom/tudou/android/R$styleable;->Multiple:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const v8, -0xff0100

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->textColor:I

    .line 50
    const/4 v7, 0x1

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->textSize:F

    .line 51
    const/4 v7, 0x5

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->drawablePadding:F

    .line 52
    iget v7, p0, Lcom/youku/widget/MultipleTextView;->textSize:F

    invoke-static {p1, v7}, Lcom/youku/widget/MultipleTextView;->px2sp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->textSize:F

    .line 53
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->wordMargin:I

    .line 55
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->lineMargin:I

    .line 57
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/widget/MultipleTextView;->textBackground:Landroid/graphics/drawable/Drawable;

    .line 58
    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->textPaddingLeft:I

    .line 60
    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->textPaddingRight:I

    .line 62
    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->textPaddingTop:I

    .line 64
    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->textPaddingBottom:I

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    const/4 v7, 0x6

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    .line 77
    .local v1, "attrsArray":[I
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 80
    .local v6, "ta":Landroid/content/res/TypedArray;
    const/4 v7, 0x2

    const/4 v8, -0x1

    :try_start_0
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->layout_width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 87
    .local v5, "marginRight":I
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 88
    .local v4, "marginLeft":I
    iget v7, p0, Lcom/youku/widget/MultipleTextView;->layout_width:I

    sub-int/2addr v7, v5

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->layout_width:I

    .line 90
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void

    .line 82
    .end local v4    # "marginLeft":I
    .end local v5    # "marginRight":I
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/youku/widget/MultipleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 84
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/youku/widget/MultipleTextView;->layout_width:I

    goto :goto_0

    .line 68
    :array_0
    .array-data 4
        0x10100d0
        0x10100d4
        0x10100f4
        0x10100f5
        0x10100f7
        0x10100f9
    .end array-data
.end method

.method static synthetic access$000(Lcom/youku/widget/MultipleTextView;)Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/MultipleTextView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/widget/MultipleTextView;->listener:Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;

    return-object v0
.end method

.method private getRightString(ILjava/util/ArrayList;Ljava/util/ArrayList;I)Z
    .locals 3
    .param p1, "width"    # I
    .param p4, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p2, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "returns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v0, p4

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 270
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/youku/widget/MultipleTextView;->getTextViewWidth(Ljava/lang/String;)I

    move-result v1

    .line 273
    .local v1, "tempWidth":I
    if-gt v1, p1, :cond_0

    .line 274
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sub-int v2, p1, v1

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/youku/widget/MultipleTextView;->getRightString(ILjava/util/ArrayList;Ljava/util/ArrayList;I)Z

    move-result v2

    .line 280
    .end local v1    # "tempWidth":I
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static px2sp(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 214
    .local v0, "fontScale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private setLeftDrawable(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "state"    # Landroid/widget/TextView;
    .param p2, "res"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 192
    iget-object v1, p0, Lcom/youku/widget/MultipleTextView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 197
    return-void
.end method


# virtual methods
.method public dealData(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 6
    .param p2, "screenWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "returns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v3, "tempstrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 234
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    move v2, p2

    .line 238
    .local v2, "tempWidth":I
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 239
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    :cond_2
    if-ne v2, p2, :cond_4

    .line 242
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/youku/widget/MultipleTextView;->getTextViewWidth(Ljava/lang/String;)I

    move-result v4

    .line 243
    .local v4, "textWidth":I
    if-lt v4, v2, :cond_3

    .line 244
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 246
    :cond_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sub-int v2, p2, v4

    goto :goto_2

    .line 250
    .end local v4    # "textWidth":I
    :cond_4
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/youku/widget/MultipleTextView;->getRightString(ILjava/util/ArrayList;Ljava/util/ArrayList;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 251
    move v2, p2

    goto :goto_2

    .line 256
    :cond_5
    return-object v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 204
    return-void
.end method

.method public getMeasuredWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getNewTextView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 290
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/MultipleTextView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 292
    .local v0, "tv":Landroid/widget/TextView;
    const v1, 0x7f02083d

    invoke-direct {p0, v0, v1}, Lcom/youku/widget/MultipleTextView;->setLeftDrawable(Landroid/widget/TextView;I)V

    .line 293
    iget v1, p0, Lcom/youku/widget/MultipleTextView;->drawablePadding:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 294
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 295
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 296
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 297
    iget v1, p0, Lcom/youku/widget/MultipleTextView;->layout_width:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 299
    iget v1, p0, Lcom/youku/widget/MultipleTextView;->textSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 300
    iget-object v1, p0, Lcom/youku/widget/MultipleTextView;->textBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/youku/widget/MultipleTextView;->textBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    :cond_0
    iget v1, p0, Lcom/youku/widget/MultipleTextView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    iget v1, p0, Lcom/youku/widget/MultipleTextView;->textPaddingLeft:I

    iget v2, p0, Lcom/youku/widget/MultipleTextView;->textPaddingTop:I

    iget v3, p0, Lcom/youku/widget/MultipleTextView;->textPaddingRight:I

    iget v4, p0, Lcom/youku/widget/MultipleTextView;->textPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 306
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    return-object v0
.end method

.method public getOnMultipleTVItemClickListener()Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/youku/widget/MultipleTextView;->listener:Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;

    return-object v0
.end method

.method public getTextViewWidth(Ljava/lang/String;)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 317
    invoke-virtual {p0, p1}, Lcom/youku/widget/MultipleTextView;->getNewTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 318
    .local v1, "tv":Landroid/widget/TextView;
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 320
    .local v3, "w":I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 322
    .local v0, "h":I
    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->measure(II)V

    .line 323
    invoke-virtual {p0, v1}, Lcom/youku/widget/MultipleTextView;->getMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 324
    .local v2, "tvw":I
    return v2
.end method

.method public setOnMultipleTVItemClickListener(Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/youku/widget/MultipleTextView;->listener:Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;

    .line 101
    return-void
.end method

.method public setTextViews(Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/SearchOfHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/SearchOfHistory;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_1

    .line 189
    :cond_0
    return-void

    .line 110
    :cond_1
    const/4 v8, 0x0

    .line 111
    .local v8, "line":I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v10, "lineMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/widget/TextView;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v9, "lineList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/16 v19, 0x0

    .line 116
    .local v19, "x":I
    const/16 v20, 0x0

    .line 118
    .local v20, "y":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v6, v0, :cond_6

    .line 119
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/MultipleTextView;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 120
    .local v15, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SearchOfHistory;

    .line 121
    .local v5, "history":Lcom/youku/vo/SearchOfHistory;
    const/16 v21, 0x1

    iget v0, v5, Lcom/youku/vo/SearchOfHistory;->type:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 122
    const v21, 0x7f02083d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/youku/widget/MultipleTextView;->setLeftDrawable(Landroid/widget/TextView;I)V

    .line 126
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/MultipleTextView;->drawablePadding:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 127
    sget-object v21, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 128
    const/16 v21, 0x13

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 129
    invoke-virtual {v15}, Landroid/widget/TextView;->setSingleLine()V

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/MultipleTextView;->layout_width:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/MultipleTextView;->textSize:F

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/widget/MultipleTextView;->textBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 135
    const v21, 0x7f020845

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 138
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/MultipleTextView;->textColor:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/MultipleTextView;->textPaddingLeft:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/MultipleTextView;->textPaddingTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/MultipleTextView;->textPaddingRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/MultipleTextView;->textPaddingBottom:I

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 141
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 142
    new-instance v21, Lcom/youku/widget/MultipleTextView$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/MultipleTextView$1;-><init>(Lcom/youku/widget/MultipleTextView;Ljava/util/List;)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, v5, Lcom/youku/vo/SearchOfHistory;->word:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 153
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/youku/vo/SearchOfHistory;->word:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x6

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 156
    .local v14, "temp":Ljava/lang/String;
    :goto_2
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 159
    .local v18, "w":I
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 161
    .local v4, "h":I
    move/from16 v0, v18

    invoke-virtual {v15, v0, v4}, Landroid/widget/TextView;->measure(II)V

    .line 162
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v16

    .line 163
    .local v16, "tvh":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/youku/widget/MultipleTextView;->getMeasuredWidth(Landroid/view/View;)I

    move-result v17

    .line 165
    .local v17, "tvw":I
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v11, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v21, v19, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/MultipleTextView;->layout_width:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 168
    const/16 v19, 0x0

    .line 169
    add-int v21, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/MultipleTextView;->lineMargin:I

    move/from16 v22, v0

    add-int v20, v21, v22

    .line 171
    add-int/lit8 v8, v8, 0x1

    .line 172
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_3
    move/from16 v0, v19

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 175
    move/from16 v0, v20

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 176
    add-int v21, v19, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/widget/MultipleTextView;->wordMargin:I

    move/from16 v22, v0

    add-int v19, v21, v22

    .line 177
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 124
    .end local v4    # "h":I
    .end local v11    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "temp":Ljava/lang/String;
    .end local v16    # "tvh":I
    .end local v17    # "tvw":I
    .end local v18    # "w":I
    :cond_4
    const v21, 0x7f02083e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/youku/widget/MultipleTextView;->setLeftDrawable(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 155
    :cond_5
    iget-object v14, v5, Lcom/youku/vo/SearchOfHistory;->word:Ljava/lang/String;

    .restart local v14    # "temp":Ljava/lang/String;
    goto/16 :goto_2

    .line 182
    .end local v5    # "history":Lcom/youku/vo/SearchOfHistory;
    .end local v14    # "temp":Ljava/lang/String;
    .end local v15    # "tv":Landroid/widget/TextView;
    :cond_6
    const/16 v21, 0x2

    move/from16 v0, v21

    if-lt v8, v0, :cond_7

    const/4 v12, 0x2

    .line 183
    .local v12, "num":I
    :goto_3
    const/4 v6, 0x0

    :goto_4
    if-gt v6, v12, :cond_0

    .line 184
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_8

    .line 185
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 186
    .local v13, "tView2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/youku/widget/MultipleTextView;->addView(Landroid/view/View;)V

    .line 184
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .end local v7    # "j":I
    .end local v12    # "num":I
    .end local v13    # "tView2":Landroid/widget/TextView;
    :cond_7
    move v12, v8

    .line 182
    goto :goto_3

    .line 183
    .restart local v7    # "j":I
    .restart local v12    # "num":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method
