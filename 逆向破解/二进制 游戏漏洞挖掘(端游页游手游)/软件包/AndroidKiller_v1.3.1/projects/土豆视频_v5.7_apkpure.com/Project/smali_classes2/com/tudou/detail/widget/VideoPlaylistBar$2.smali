.class Lcom/tudou/detail/widget/VideoPlaylistBar$2;
.super Ljava/lang/Object;
.source "VideoPlaylistBar.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoPlaylistBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoPlaylistBar;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/16 v6, 0x8

    .line 184
    invoke-static {}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onScroll"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$300(Lcom/tudou/detail/widget/VideoPlaylistBar;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$400(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$400(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$200(Lcom/tudou/detail/widget/VideoPlaylistBar;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    iget-boolean v3, v3, Lcom/tudou/detail/widget/VideoPlaylistBar;->isExpanded:Z

    if-eqz v3, :cond_0

    const-string v3, "number"

    iget-object v4, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v4}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$100(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$500(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/adapter/PlaylistAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    if-le p2, v3, :cond_0

    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$500(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/adapter/PlaylistAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/detail/adapter/PlaylistAdapter;->getCount()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$500(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/adapter/PlaylistAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/tudou/detail/adapter/PlaylistAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/Video;

    .line 194
    .local v2, "video":Lcom/tudou/detail/vo/Video;
    const/16 v1, 0x64

    .line 195
    .local v1, "size":I
    iget v3, v2, Lcom/tudou/detail/vo/Video;->mEpisode:I

    if-le v3, v1, :cond_3

    .line 196
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    .line 197
    iget v3, v2, Lcom/tudou/detail/vo/Video;->mEpisode:I

    mul-int v4, v0, v1

    if-le v3, v4, :cond_2

    iget v3, v2, Lcom/tudou/detail/vo/Video;->mEpisode:I

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v1

    if-ge v3, v4, :cond_2

    .line 198
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$400(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/tudou/detail/vo/Video;->mEpisode:I

    div-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "00+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$400(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 200
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$400(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 196
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    .end local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$400(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/16 v3, 0x8

    .line 169
    invoke-static {}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged scrollState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0, p2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$202(Lcom/tudou/detail/widget/VideoPlaylistBar;I)I

    .line 171
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$300(Lcom/tudou/detail/widget/VideoPlaylistBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$400(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string v0, "number"

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$100(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    if-nez p2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$2;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$400(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
