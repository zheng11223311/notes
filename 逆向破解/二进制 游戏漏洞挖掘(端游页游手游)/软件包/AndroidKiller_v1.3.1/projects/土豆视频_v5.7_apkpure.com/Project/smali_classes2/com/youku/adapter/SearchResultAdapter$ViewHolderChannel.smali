.class Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/SearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderChannel"
.end annotation


# instance fields
.field private imgChannelSubed:Landroid/widget/ImageView;

.field private searchChannelAdapter:Lcom/youku/adapter/SearchChannelGridViewAdapter;

.field private searchChannelData:Landroid/widget/RelativeLayout;

.field private searchChannelDetail1:Landroid/widget/TextView;

.field private searchChannelGridView:Landroid/widget/GridView;

.field private searchChannelImg:Landroid/widget/ImageView;

.field private searchChannelName:Landroid/widget/TextView;

.field private searchChannelV:Landroid/widget/ImageView;

.field private subedChannelFrame:Landroid/widget/FrameLayout;

.field private subedChannelProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;)V
    .locals 1

    .prologue
    .line 771
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelAdapter:Lcom/youku/adapter/SearchChannelGridViewAdapter;

    return-void
.end method

.method static synthetic access$1700(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelV:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->imgChannelSubed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->imgChannelSubed:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->subedChannelFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->subedChannelFrame:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->subedChannelProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->subedChannelProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelData:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelData:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelDetail1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelDetail1:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/GridView;)Landroid/widget/GridView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    .param p1, "x1"    # Landroid/widget/GridView;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelGridView:Landroid/widget/GridView;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Lcom/youku/adapter/SearchChannelGridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelAdapter:Lcom/youku/adapter/SearchChannelGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Lcom/youku/adapter/SearchChannelGridViewAdapter;)Lcom/youku/adapter/SearchChannelGridViewAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    .param p1, "x1"    # Lcom/youku/adapter/SearchChannelGridViewAdapter;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->searchChannelAdapter:Lcom/youku/adapter/SearchChannelGridViewAdapter;

    return-object p1
.end method
