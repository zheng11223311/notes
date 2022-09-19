.class public Lcom/tudou/android/chat/ChatLoadingAndErrorView;
.super Lcom/tudou/android/chat/ChatBasedView;
.source "ChatLoadingAndErrorView.java"


# instance fields
.field private mErrorTextView:Landroid/widget/TextView;

.field private mErrorView:Landroid/view/View;

.field private mLoadingTextView:Landroid/widget/TextView;

.field private mLoadingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/android/chat/ChatBasedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->initView()V

    .line 35
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030081

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    const v1, 0x106000b

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->setBackgroundResource(I)V

    .line 41
    const v1, 0x7f0c02a1

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->mLoadingView:Landroid/view/View;

    .line 42
    const v1, 0x7f0c02a2

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->mLoadingTextView:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0c02a3

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->mErrorView:Landroid/view/View;

    .line 44
    const v1, 0x7f0c02a5

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->mErrorTextView:Landroid/widget/TextView;

    .line 45
    return-void
.end method


# virtual methods
.method public setChildrenClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "lis"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public showErrorView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->showErrorView()V

    .line 56
    return-void
.end method

.method public showLoadingView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->mErrorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->setVisibility(I)V

    .line 73
    return-void
.end method

.method public showLoadingView(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->mLoadingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->showLoadingView()V

    .line 67
    return-void
.end method
