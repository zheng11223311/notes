.class Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CacheFloderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/CacheFloderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private cacheFloderImage:Landroid/widget/ImageView;

.field private cacheFloderTiem:Landroid/widget/TextView;

.field private cacheNew:Landroid/widget/ImageView;

.field private cacheStatusImgLine:Landroid/widget/LinearLayout;

.field private floderStatusImg:Landroid/widget/ImageView;

.field private progress:Landroid/widget/TextView;

.field private state:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/youku/adapter/CacheFloderAdapter;

.field private title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/youku/adapter/CacheFloderAdapter;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->this$0:Lcom/youku/adapter/CacheFloderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->cacheStatusImgLine:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$002(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->cacheStatusImgLine:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->floderStatusImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->floderStatusImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->cacheFloderTiem:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->cacheFloderTiem:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->cacheFloderImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->cacheFloderImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/adapter/CacheFloderAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-object p1
.end method
