.class public Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;
.super Landroid/widget/TextView;
.source "VideoCacheDiskProgressBar.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTotalUsedSize:Ljava/lang/String;

.field private mUsedSize:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->mTotalUsedSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->mTotalUsedSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->mUsedSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->mUsedSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public invalidateDiskProgress()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;

    invoke-direct {v0, p0}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;-><init>(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;)V

    invoke-virtual {v0}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;->start()V

    .line 60
    return-void
.end method
