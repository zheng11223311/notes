.class Lcom/tudou/ui/fragment/MyTudouFragment$5;
.super Landroid/os/Handler;
.source "MyTudouFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 266
    :pswitch_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 267
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$200(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$300(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$400(Lcom/tudou/ui/fragment/MyTudouFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    iput v1, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->adapterTag:I

    .line 268
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$300(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iget v1, v1, Lcom/tudou/ui/fragment/MyTudouFragment;->adapterTag:I

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$300(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$500(Lcom/tudou/ui/fragment/MyTudouFragment;II)V

    .line 272
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$700(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/adapter/CacheListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$600(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$200(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$300(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iget v4, v4, Lcom/tudou/ui/fragment/MyTudouFragment;->adapterTag:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/youku/adapter/CacheListAdapter;->setData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 274
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$700(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/adapter/CacheListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    :goto_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1000(Lcom/tudou/ui/fragment/MyTudouFragment;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1000(Lcom/tudou/ui/fragment/MyTudouFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$200(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->allButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->allButton:Landroid/widget/TextView;

    const-string v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    const-string v1, "IDownload.ACTION_DOWNLOAD_NEED_REFRESH"

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$000(Lcom/tudou/ui/fragment/MyTudouFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iget v1, v1, Lcom/tudou/ui/fragment/MyTudouFragment;->adapterTag:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$500(Lcom/tudou/ui/fragment/MyTudouFragment;II)V

    goto/16 :goto_1

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$900(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    goto :goto_2

    .line 300
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0, p1}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1200(Lcom/tudou/ui/fragment/MyTudouFragment;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x403
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
