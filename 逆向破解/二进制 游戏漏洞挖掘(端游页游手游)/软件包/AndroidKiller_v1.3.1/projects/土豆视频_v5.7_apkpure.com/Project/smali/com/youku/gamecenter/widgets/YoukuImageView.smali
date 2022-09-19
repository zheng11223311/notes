.class public Lcom/youku/gamecenter/widgets/YoukuImageView;
.super Landroid/widget/ImageView;
.source "YoukuImageView.java"


# instance fields
.field public size:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/gamecenter/widgets/YoukuImageView;->size:D

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/gamecenter/widgets/YoukuImageView;->size:D

    .line 15
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 20
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 21
    .local v1, "w":I
    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v0, v2, 0x10

    .line 24
    .local v0, "h":I
    invoke-virtual {p0, v1, v0}, Lcom/youku/gamecenter/widgets/YoukuImageView;->setMeasuredDimension(II)V

    .line 27
    return-void
.end method
