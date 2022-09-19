.class Lcom/tudou/ui/fragment/CacheFolderFragment$2;
.super Landroid/os/Handler;
.source "CacheFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 139
    :sswitch_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 140
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/NewVideoDetail;

    iput-object v0, v1, Lcom/tudou/ui/fragment/CacheFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    .line 141
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$100(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    goto :goto_0

    .line 147
    :sswitch_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 148
    const v0, 0x7f0d00b0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 151
    :sswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$300(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/adapter/CacheFloderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/adapter/CacheFloderAdapter;->setData(Ljava/util/ArrayList;)V

    .line 156
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$300(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/adapter/CacheFloderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/adapter/CacheFloderAdapter;->notifyDataSetChanged()V

    .line 157
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 158
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$400(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheNoData:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$400(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$300(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/adapter/CacheFloderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$500(Lcom/tudou/ui/fragment/CacheFolderFragment;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$400(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$500(Lcom/tudou/ui/fragment/CacheFolderFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$300(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/adapter/CacheFloderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/adapter/CacheFloderAdapter;->notifyDataSetChanged()V

    .line 165
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v1, v0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleTxt:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$400(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 174
    :sswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleEdit:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->setEditAble()V

    .line 179
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$300(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/adapter/CacheFloderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/adapter/CacheFloderAdapter;->setData(Ljava/util/ArrayList;)V

    .line 180
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->v:Lcom/tudou/detail/fragment/VideoCacheFragment;

    if-eqz v0, :cond_6

    .line 181
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->v:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->syncAllDownloadState()V

    .line 182
    :cond_6
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto/16 :goto_0

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_2
        0xcd -> :sswitch_0
        0xce -> :sswitch_1
        0x12f -> :sswitch_3
    .end sparse-switch
.end method
