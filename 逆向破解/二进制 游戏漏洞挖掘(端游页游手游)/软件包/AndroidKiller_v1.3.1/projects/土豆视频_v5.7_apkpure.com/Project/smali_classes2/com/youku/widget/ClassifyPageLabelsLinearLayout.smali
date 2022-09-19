.class public Lcom/youku/widget/ClassifyPageLabelsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ClassifyPageLabelsLinearLayout.java"


# instance fields
.field private mChannelName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownView:Landroid/view/View;

.field private mIcon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLlView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMark:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRlView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mLlView:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mMark:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mIcon:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mName:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mChannelName:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->initView()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/ClassifyPageLabelsLinearLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/ClassifyPageLabelsLinearLayout;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/ClassifyPageLabelsLinearLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/ClassifyPageLabelsLinearLayout;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mChannelName:Ljava/lang/String;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 56
    const-string v0, "layout_inflater"

    .line 57
    .local v0, "mServiceStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0301a3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    .line 59
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v2, 0x7f0c078b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mDownView:Landroid/view/View;

    .line 61
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0777

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c077c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0781

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0786

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c078c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0791

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0796

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c079b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mLlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0779

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mLlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c077e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mLlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0783

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mLlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0788

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mLlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c078e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mLlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0793

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mLlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0798

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mLlView:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c079d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mMark:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0778

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mMark:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c077d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mMark:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0782

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mMark:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0787

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mMark:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c078d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mMark:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0792

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mMark:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0797

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mMark:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c079c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mIcon:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c077a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mIcon:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c077f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mIcon:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0784

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mIcon:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0789

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mIcon:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c078f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mIcon:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0794

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mIcon:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0799

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mIcon:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c079e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mName:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c077b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mName:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0780

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mName:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0785

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mName:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c078a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mName:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0790

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mName:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0795

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mName:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c079a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mName:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c079f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method


# virtual methods
.method public setData(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelPageLabels;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mChannelPageLabelsList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelPageLabels;>;"
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 114
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 190
    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 118
    .local v1, "indexSize":I
    if-le v1, v6, :cond_2

    .line 119
    const/16 v1, 0x8

    .line 122
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 124
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelPageLabels;

    .line 126
    .local v2, "mChannelPageLabels":Lcom/youku/vo/ChannelPageLabels;
    iget-object v4, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v4, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mLlView:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v4, v2, Lcom/youku/vo/ChannelPageLabels;->label_type:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "key_tag"

    iget-object v5, v2, Lcom/youku/vo/ChannelPageLabels;->label_type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    iget-object v4, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mMark:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_1
    iget-object v4, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mName:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v2, Lcom/youku/vo/ChannelPageLabels;->label_title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const-string v4, "-2"

    iget-object v5, v2, Lcom/youku/vo/ChannelPageLabels;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v5, v5, Lcom/youku/vo/SkipInfo;->brief_filter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    iget-object v4, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mIcon:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :goto_2
    move v3, v0

    .line 143
    .local v3, "position":I
    iget-object v4, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-instance v5, Lcom/youku/widget/ClassifyPageLabelsLinearLayout$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/youku/widget/ClassifyPageLabelsLinearLayout$1;-><init>(Lcom/youku/widget/ClassifyPageLabelsLinearLayout;Lcom/youku/vo/ChannelPageLabels;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v3    # "position":I
    :cond_3
    iget-object v4, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mMark:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 139
    :cond_4
    iget-object v4, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mIcon:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 174
    .end local v2    # "mChannelPageLabels":Lcom/youku/vo/ChannelPageLabels;
    :cond_5
    if-eq v1, v6, :cond_0

    .line 177
    const/4 v4, 0x5

    if-ge v1, v4, :cond_6

    .line 178
    iget-object v4, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mDownView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 180
    if-eq v1, v8, :cond_0

    .line 183
    const/4 v0, 0x3

    :goto_3
    if-lt v0, v1, :cond_0

    .line 184
    iget-object v4, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 183
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 187
    :cond_6
    const/4 v0, 0x7

    :goto_4
    if-lt v0, v1, :cond_0

    .line 188
    iget-object v4, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->mRlView:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 187
    add-int/lit8 v0, v0, -0x1

    goto :goto_4
.end method
