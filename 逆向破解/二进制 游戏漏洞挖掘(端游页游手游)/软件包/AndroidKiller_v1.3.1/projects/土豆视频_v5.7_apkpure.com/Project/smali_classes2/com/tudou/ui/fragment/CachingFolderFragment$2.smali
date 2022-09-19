.class Lcom/tudou/ui/fragment/CachingFolderFragment$2;
.super Landroid/os/Handler;
.source "CachingFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachingFolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 128
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 130
    :sswitch_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 131
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/youku/vo/NewVideoDetail;

    iput-object v1, v2, Lcom/tudou/ui/fragment/CachingFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    .line 132
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CachingFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CachingFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CachingFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$100(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    goto :goto_0

    .line 139
    :sswitch_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 140
    const v1, 0x7f0d00b0

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 143
    :sswitch_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CachingFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v1, v1, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleEdit:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$300(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/adapter/CachingListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/youku/adapter/CachingListAdapter;->setData(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 150
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$300(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/adapter/CachingListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 151
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 152
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$400(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheNoData:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$400(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$300(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/adapter/CachingListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$500(Lcom/tudou/ui/fragment/CachingFolderFragment;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$400(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$500(Lcom/tudou/ui/fragment/CachingFolderFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$300(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/adapter/CachingListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 159
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CachingFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v2, v1, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CachingFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v1, v1, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleEdit:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$400(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 167
    :sswitch_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 168
    :cond_5
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CachingFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v1, v1, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleEdit:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->setEditAble()V

    .line 171
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$300(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/adapter/CachingListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/youku/adapter/CachingListAdapter;->setData(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 172
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CachingFolderFragment;->fragment:Lcom/tudou/detail/fragment/VideoCacheFragment;

    if-eqz v1, :cond_7

    .line 173
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CachingFolderFragment;->fragment:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->syncAllDownloadState()V

    .line 174
    :cond_7
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto/16 :goto_0

    .line 177
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    .line 178
    .local v0, "dinfo":Lcom/tudou/service/download/DownloadInfo;
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$600(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v1

    iget-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tudou/service/download/DownloadManager;->pauseDownload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x1e -> :sswitch_2
        0xcd -> :sswitch_0
        0xce -> :sswitch_1
        0x12f -> :sswitch_3
    .end sparse-switch
.end method
