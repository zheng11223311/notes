.class public Lcom/youku/gamecenter/widgets/ElasticTextArea;
.super Landroid/widget/RelativeLayout;
.source "ElasticTextArea.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAlreadyShowAll:Z

.field private mButtonMoreContainer:Landroid/view/View;

.field private mDescMoreLayout:Landroid/view/View;

.field private mIsShowAll:Z

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-boolean v1, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mAlreadyShowAll:Z

    .line 18
    iput-boolean v1, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mIsShowAll:Z

    .line 20
    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mTextView:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mButtonMoreContainer:Landroid/view/View;

    .line 24
    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mDescMoreLayout:Landroid/view/View;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/widgets/ElasticTextArea;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/ElasticTextArea;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/widgets/ElasticTextArea;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/ElasticTextArea;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mButtonMoreContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/youku/gamecenter/widgets/ElasticTextArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/ElasticTextArea;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mAlreadyShowAll:Z

    return p1
.end method

.method private handleContainerClicked()V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mAlreadyShowAll:Z

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mIsShowAll:Z

    if-eqz v0, :cond_2

    .line 66
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->setShowPartly()V

    goto :goto_0

    .line 70
    :cond_2
    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mIsShowAll:Z

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->setShowAll()V

    goto :goto_0
.end method

.method private setShowAll()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mIsShowAll:Z

    .line 84
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 85
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mButtonMoreContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mDescMoreLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    return-void
.end method

.method private setShowPartly()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mIsShowAll:Z

    .line 78
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 79
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mButtonMoreContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/youku/gamecenter/widgets/ElasticTextArea$1;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/widgets/ElasticTextArea$1;-><init>(Lcom/youku/gamecenter/widgets/ElasticTextArea;)V

    const-wide/16 v2, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mButtonMoreContainer:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->setShowAll()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    if-ne p1, p0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->handleContainerClicked()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 92
    sget v0, Lcom/youku/gamecenter/R$id;->buttonOper:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mButtonMoreContainer:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mButtonMoreContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget v0, Lcom/youku/gamecenter/R$id;->game_desc:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mTextView:Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/youku/gamecenter/R$id;->gamecenter_elastic_textarea_more_line:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea;->mDescMoreLayout:Landroid/view/View;

    .line 96
    invoke-virtual {p0, p0}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method
