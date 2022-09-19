.class public Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "AndroidEmoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/util/AndroidEmoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiImageSpan"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DynamicDrawableSpan"


# instance fields
.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;I)V
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "codePoint"    # I

    .prologue
    const/high16 v5, 0x40800000    # 4.0f

    const/4 v3, 0x0

    .line 70
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 72
    invoke-static {}, Lio/rong/imkit/util/AndroidEmoji;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-static {}, Lio/rong/imkit/util/AndroidEmoji;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/Emoji;

    invoke-virtual {v2}, Lio/rong/imkit/model/Emoji;->getRes()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v2, p0, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {}, Lio/rong/imkit/util/AndroidEmoji;->access$100()F

    move-result v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v1, v2, v4

    .line 76
    .local v1, "width":I
    iget-object v2, p0, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {}, Lio/rong/imkit/util/AndroidEmoji;->access$100()F

    move-result v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v0, v2, v4

    .line 77
    .local v0, "height":I
    iget-object v2, p0, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-lez v1, :cond_1

    .end local v1    # "width":I
    :goto_0
    if-lez v0, :cond_2

    .end local v0    # "height":I
    :goto_1
    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    :cond_0
    return-void

    .restart local v0    # "height":I
    .restart local v1    # "width":I
    :cond_1
    move v1, v3

    .line 77
    goto :goto_0

    .end local v1    # "width":I
    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;ILio/rong/imkit/util/AndroidEmoji$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imkit/util/AndroidEmoji$1;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;-><init>(Landroid/content/res/Resources;I)V

    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 138
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 140
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 143
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 148
    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 123
    invoke-direct {p0}, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    .local v0, "b":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 126
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p8, v2

    .line 128
    .local v1, "transY":I
    int-to-float v2, v1

    invoke-static {}, Lio/rong/imkit/util/AndroidEmoji;->access$100()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 131
    int-to-float v2, v1

    invoke-virtual {p1, p5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-direct {p0}, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 108
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    .line 109
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    neg-int v2, v2

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 110
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 112
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 113
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 116
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->right:I

    return v2
.end method
