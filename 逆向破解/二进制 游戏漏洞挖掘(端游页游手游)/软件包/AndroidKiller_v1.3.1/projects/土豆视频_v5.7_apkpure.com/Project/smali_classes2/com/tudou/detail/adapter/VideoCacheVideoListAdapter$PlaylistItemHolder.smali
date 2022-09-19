.class public Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VideoCacheVideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlaylistItemHolder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field duration:Landroid/widget/TextView;

.field mMark:Landroid/widget/ImageView;

.field playtimes:Landroid/widget/TextView;

.field state:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

.field title:Landroid/widget/TextView;

.field public video:Lcom/tudou/detail/vo/Video;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;Landroid/view/View;)V
    .locals 2
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->this$0:Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    .line 164
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 165
    const-string v0, "number"

    invoke-static {p1}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->access$100(Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const v0, 0x7f0c0363

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0c0365

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->mMark:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f0c0362

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->content:Landroid/view/View;

    .line 169
    const v0, 0x7f0c0364

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->state:Landroid/widget/ImageView;

    .line 178
    :goto_0
    return-void

    .line 171
    :cond_0
    const v0, 0x7f0c035d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0c0361

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->mMark:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f0c035c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->content:Landroid/view/View;

    .line 174
    const v0, 0x7f0c035e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0c035f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0c0360

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->state:Landroid/widget/ImageView;

    goto :goto_0
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 144
    return-void
.end method

.method public syncDownloadState(Lcom/tudou/detail/vo/Video;)V
    .locals 7
    .param p1, "video"    # Lcom/tudou/detail/vo/Video;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 147
    iget-object v5, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->this$0:Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    invoke-static {v5}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->access$000(Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v5

    iget-object v6, p1, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->this$0:Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    invoke-static {v5}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->access$000(Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v5

    iget-object v6, p1, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tudou/service/download/DownloadManager;->isDownloadCreating(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v0, v3

    .line 148
    .local v0, "exists":Z
    :goto_0
    const/4 v1, 0x0

    .line 149
    .local v1, "finished":Z
    if-eqz v0, :cond_4

    .line 150
    iget-object v5, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->state:Landroid/widget/ImageView;

    const v6, 0x7f0201a3

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v5, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->this$0:Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    invoke-static {v5}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->access$000(Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v5

    iget-object v6, p1, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v2

    .line 152
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    if-ne v3, v5, :cond_3

    move v1, v3

    .line 154
    :goto_1
    if-eqz v1, :cond_1

    .line 155
    iget-object v3, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->state:Landroid/widget/ImageView;

    const v4, 0x7f0201a4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->invalidate()V

    .line 162
    return-void

    .end local v0    # "exists":Z
    .end local v1    # "finished":Z
    :cond_2
    move v0, v4

    .line 147
    goto :goto_0

    .restart local v0    # "exists":Z
    .restart local v1    # "finished":Z
    .restart local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_3
    move v1, v4

    .line 153
    goto :goto_1

    .line 159
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_4
    iget-object v3, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->state:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
