.class public Lcom/tudou/android/chat/ChatCreatedView;
.super Lcom/tudou/android/chat/ChatBasedView;
.source "ChatCreatedView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCreateBtn:Landroid/view/View;

.field private mJoinBtn:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/tudou/android/chat/ChatCreatedView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/chat/ChatCreatedView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/android/chat/ChatCreatedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tudou/android/chat/ChatCreatedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/android/chat/ChatBasedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatCreatedView;->initView()V

    .line 32
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatCreatedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030080

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    const v1, 0x7f0c029d

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatCreatedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/android/chat/ChatCreatedView;->mCreateBtn:Landroid/view/View;

    .line 38
    const v1, 0x7f0c029f

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatCreatedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/android/chat/ChatCreatedView;->mJoinBtn:Landroid/view/View;

    .line 39
    return-void
.end method


# virtual methods
.method public setChildrenClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "lis"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/android/chat/ChatCreatedView;->mCreateBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/tudou/android/chat/ChatCreatedView;->mJoinBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
