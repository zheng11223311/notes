.class public Lcom/youku/widget/ErrorLayout;
.super Landroid/widget/LinearLayout;
.source "ErrorLayout.java"


# instance fields
.field private mErrorTv:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/ErrorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/widget/ErrorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/youku/widget/ErrorLayout;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 36
    const v1, 0x106000b

    invoke-virtual {p0, v1}, Lcom/youku/widget/ErrorLayout;->setBackgroundResource(I)V

    .line 37
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/youku/widget/ErrorLayout;->setGravity(I)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/youku/widget/ErrorLayout;->setOrientation(I)V

    .line 39
    invoke-virtual {p0}, Lcom/youku/widget/ErrorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300f6

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f0c0449

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/widget/ErrorLayout;->mImageView:Landroid/widget/ImageView;

    .line 41
    const v1, 0x7f0c044a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/widget/ErrorLayout;->mErrorTv:Landroid/widget/TextView;

    .line 42
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/youku/widget/ErrorLayout;->setVisibility(I)V

    .line 75
    return-void
.end method

.method public showLoadFailedLayout()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "\u8d70\u795e\u5566\uff0c\u70b9\u51fb\u5c4f\u5e55\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/youku/widget/ErrorLayout;->showLoadFailedLayout(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public showLoadFailedLayout(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/youku/widget/ErrorLayout;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020554

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object v0, p0, Lcom/youku/widget/ErrorLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/youku/widget/ErrorLayout;->mErrorTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/youku/widget/ErrorLayout;->mErrorTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public showLoadingLayout()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 45
    iget-object v0, p0, Lcom/youku/widget/ErrorLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/youku/widget/ErrorLayout;->mErrorTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/widget/ErrorLayout;->setVisibility(I)V

    .line 48
    return-void
.end method

.method public showNoDataLayout()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "\u6682\u65e0\u6570\u636e"

    invoke-virtual {p0, v0}, Lcom/youku/widget/ErrorLayout;->showNoDataLayout(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public showNoDataLayout(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/youku/widget/ErrorLayout;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020221

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v0, p0, Lcom/youku/widget/ErrorLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/youku/widget/ErrorLayout;->mErrorTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/youku/widget/ErrorLayout;->mErrorTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
