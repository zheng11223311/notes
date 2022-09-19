.class public Lcom/tudou/adapter/PosterAdapter;
.super Landroid/widget/BaseAdapter;
.source "PosterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/PosterAdapter$Holder;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_SUCESS:Ljava/lang/String; = "com.tudou.IMAGE_SUCCESS"

.field public static final MSG_REFRESH:I = 0x1


# instance fields
.field handler:Landroid/os/Handler;

.field private mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

.field private mInflater:Landroid/view/LayoutInflater;

.field public receiver:Landroid/content/BroadcastReceiver;

.field private videoInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Poster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/activity/BaseActivity;)V
    .locals 1
    .param p1, "context"    # Lcom/tudou/ui/activity/BaseActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Lcom/tudou/adapter/PosterAdapter$1;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/PosterAdapter$1;-><init>(Lcom/tudou/adapter/PosterAdapter;)V

    iput-object v0, p0, Lcom/tudou/adapter/PosterAdapter;->handler:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/tudou/adapter/PosterAdapter$2;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/PosterAdapter$2;-><init>(Lcom/tudou/adapter/PosterAdapter;)V

    iput-object v0, p0, Lcom/tudou/adapter/PosterAdapter;->receiver:Landroid/content/BroadcastReceiver;

    .line 51
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/PosterAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    iput-object p1, p0, Lcom/tudou/adapter/PosterAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 55
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tudou/adapter/PosterAdapter;->videoInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget v0, Lcom/tudou/android/Youku;->POSTER_IMAGE_COUNT:I

    if-nez v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    sget v3, Lcom/tudou/android/Youku;->POSTER_IMAGE_COUNT:I

    if-nez v3, :cond_0

    move-object v0, p2

    .line 101
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    :goto_0
    return-object v0

    .line 87
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    if-nez p2, :cond_1

    .line 88
    iget-object v3, p0, Lcom/tudou/adapter/PosterAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0302eb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 90
    :cond_1
    new-instance v1, Lcom/tudou/adapter/PosterAdapter$Holder;

    invoke-direct {v1}, Lcom/tudou/adapter/PosterAdapter$Holder;-><init>()V

    .line 91
    .local v1, "holder":Lcom/tudou/adapter/PosterAdapter$Holder;
    const v3, 0x7f0c0289

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/tudou/adapter/PosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    .line 93
    iget-object v3, p0, Lcom/tudou/adapter/PosterAdapter;->videoInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tudou/adapter/PosterAdapter;->videoInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Poster;

    .line 94
    .local v2, "videoInfo":Lcom/youku/vo/Poster;
    iget-object v3, v2, Lcom/youku/vo/Poster;->img:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, v1, Lcom/tudou/adapter/PosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/youku/vo/Poster;->img:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    move-object v0, p2

    .line 101
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 97
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/tudou/adapter/PosterAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v2, Lcom/youku/vo/Poster;->small_img:Ljava/lang/String;

    iget-object v5, v1, Lcom/tudou/adapter/PosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Poster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/Poster;>;"
    iput-object p1, p0, Lcom/tudou/adapter/PosterAdapter;->videoInfos:Ljava/util/ArrayList;

    .line 60
    return-void
.end method
