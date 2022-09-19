.class Lcom/youku/adapter/CachingListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CachingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/CachingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private cacheEditImg:Landroid/widget/ImageView;

.field private cacheEditImgLine:Landroid/widget/LinearLayout;

.field private cacheImageAlbum:Landroid/widget/ImageView;

.field private cacheImageLevel:Landroid/widget/RelativeLayout;

.field private cacheSpeed:Landroid/widget/TextView;

.field private cacheTxtStatue:Landroid/widget/TextView;

.field private rProBar:Lcom/youku/widget/RoundProgressBar;

.field private state:Landroid/widget/TextView;

.field private statusImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/youku/adapter/CachingListAdapter;

.field private thumbnail:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/youku/adapter/CachingListAdapter;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->cacheEditImgLine:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$002(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->cacheEditImgLine:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->cacheEditImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->cacheImageLevel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->cacheImageLevel:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$102(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->cacheEditImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->cacheSpeed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->cacheSpeed:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->rProBar:Lcom/youku/widget/RoundProgressBar;

    return-object v0
.end method

.method static synthetic access$502(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/youku/widget/RoundProgressBar;)Lcom/youku/widget/RoundProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/youku/widget/RoundProgressBar;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->rProBar:Lcom/youku/widget/RoundProgressBar;

    return-object p1
.end method

.method static synthetic access$600(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->cacheTxtStatue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->cacheTxtStatue:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->cacheImageAlbum:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->cacheImageAlbum:Landroid/widget/ImageView;

    return-object p1
.end method
