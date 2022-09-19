.class public Lcom/tudou/adapter/SubscribeItem;
.super Lcom/tudou/adapter/IndexItemType;
.source "SubscribeItem.java"


# instance fields
.field public favourite:Landroid/widget/ImageView;

.field public imgSubscribe:Landroid/widget/ImageView;

.field public imgUserChanel:Landroid/widget/ImageView;

.field public img_cache:Landroid/widget/ImageView;

.field public juji_img:Landroid/widget/ImageView;

.field public linear_cache:Landroid/widget/LinearLayout;

.field public linear_share:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field public num:Landroid/widget/TextView;

.field public num_bg:Landroid/widget/ImageView;

.field public numlayout:Landroid/view/View;

.field public point_container:Landroid/widget/LinearLayout;

.field public progressBar:Landroid/widget/ProgressBar;

.field public stripeTop:Landroid/widget/TextView;

.field public subscribeItemViewPager:Landroid/support/v4/view/ViewPager;

.field public title:Landroid/widget/TextView;

.field public titleBar:Landroid/view/View;

.field public txt_cache:Landroid/widget/TextView;

.field public updateTime:Landroid/widget/TextView;

.field public userImage:Landroid/widget/ImageView;

.field public userName:Landroid/widget/TextView;

.field public vuserimg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/tudou/adapter/SubscribeItem;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0}, Lcom/tudou/adapter/SubscribeItem;->init()V

    .line 51
    return-void
.end method


# virtual methods
.method init()V
    .locals 5

    .prologue
    .line 54
    const-string v0, "layout_inflater"

    .line 55
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/SubscribeItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0302d7

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0c0585

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->userImage:Landroid/widget/ImageView;

    .line 59
    const v2, 0x7f0c052e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->userName:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f0c0ce1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->updateTime:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0c028d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->stripeTop:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0c00f2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->title:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f0c0cea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->linear_share:Landroid/widget/LinearLayout;

    .line 64
    const v2, 0x7f0c0ce7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    .line 65
    const v2, 0x7f0c0ce2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->imgUserChanel:Landroid/widget/ImageView;

    .line 66
    const v2, 0x7f0c0ce3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->imgSubscribe:Landroid/widget/ImageView;

    .line 67
    const v2, 0x7f0c0cdd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->titleBar:Landroid/view/View;

    .line 68
    const v2, 0x7f0c07c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->numlayout:Landroid/view/View;

    .line 69
    const v2, 0x7f0c07c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->num:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f0c07c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->num_bg:Landroid/widget/ImageView;

    .line 71
    const v2, 0x7f0c0ce6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->favourite:Landroid/widget/ImageView;

    .line 72
    const v2, 0x7f0c0ce0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->juji_img:Landroid/widget/ImageView;

    .line 73
    const v2, 0x7f0c022b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->vuserimg:Landroid/widget/ImageView;

    .line 74
    const v2, 0x7f0c0ce8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    .line 75
    const v2, 0x7f0c0ce9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    .line 76
    const v2, 0x7f0c0ce4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->subscribeItemViewPager:Landroid/support/v4/view/ViewPager;

    .line 77
    const v2, 0x7f0c028c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->point_container:Landroid/widget/LinearLayout;

    .line 78
    const v2, 0x7f0c058d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/tudou/adapter/SubscribeItem;->progressBar:Landroid/widget/ProgressBar;

    .line 79
    return-void
.end method
