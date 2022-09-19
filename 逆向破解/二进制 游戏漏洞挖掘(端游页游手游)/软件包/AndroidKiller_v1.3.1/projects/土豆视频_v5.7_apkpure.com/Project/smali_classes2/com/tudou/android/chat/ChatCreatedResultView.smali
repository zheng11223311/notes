.class public Lcom/tudou/android/chat/ChatCreatedResultView;
.super Lcom/tudou/android/chat/ChatBasedView;
.source "ChatCreatedResultView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChatResultInviteTextView:Landroid/view/View;

.field private mChatResultJoinTextView:Landroid/view/View;

.field private mChatRoomNumber:Landroid/widget/TextView;

.field private mRedIcon:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/tudou/android/chat/ChatCreatedResultView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/chat/ChatCreatedResultView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/android/chat/ChatCreatedResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/tudou/android/chat/ChatCreatedResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatCreatedResultView;->initView()V

    .line 35
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatCreatedResultView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03007f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    const v1, 0x7f0c029b

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatCreatedResultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mChatRoomNumber:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0c0298

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatCreatedResultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mChatResultJoinTextView:Landroid/view/View;

    .line 42
    const v1, 0x7f0c0297

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatCreatedResultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mChatResultInviteTextView:Landroid/view/View;

    .line 43
    const v1, 0x7f0c029a

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatCreatedResultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mTitle:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f0c0299

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatCreatedResultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mRedIcon:Landroid/view/View;

    .line 45
    return-void
.end method


# virtual methods
.method public isShowInvitePage()Z
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "s":Ljava/lang/String;
    const-string v1, "\u623f\u95f4\u521b\u5efa\u5b8c\u6210"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 76
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setChildrenClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "lis"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mChatRoomNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mChatResultJoinTextView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mChatResultInviteTextView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public setRedIconToogle(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mRedIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mRedIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public show(Ljava/lang/String;)V
    .locals 1
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mChatRoomNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tudou/android/chat/ChatCreatedResultView;->setVisibility(I)V

    .line 56
    return-void
.end method

.method public showInviteText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x45

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    iget-object v1, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const-string v1, "\u623f\u95f4\u521b\u5efa\u5b8c\u6210"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatCreatedResultView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 63
    iget-object v1, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mTitle:Landroid/widget/TextView;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 64
    iget-object v1, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 68
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tudou/android/chat/ChatCreatedResultView;->show(Ljava/lang/String;)V

    .line 69
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/tudou/android/chat/ChatCreatedResultView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
