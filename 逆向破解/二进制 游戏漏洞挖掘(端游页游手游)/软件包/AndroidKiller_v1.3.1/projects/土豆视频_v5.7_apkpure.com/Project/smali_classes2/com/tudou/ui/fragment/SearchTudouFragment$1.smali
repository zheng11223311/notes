.class Lcom/tudou/ui/fragment/SearchTudouFragment$1;
.super Landroid/os/Handler;
.source "SearchTudouFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchTudouFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouFragment;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 115
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/youku/vo/DropWordResult;

    .line 118
    .local v1, "tempWord":Lcom/youku/vo/DropWordResult;
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v2}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "currEditKey":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_SEARCH_SUGGEST_WORDS_SUCCESS : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$100(Lcom/tudou/ui/fragment/SearchTudouFragment;)J

    move-result-wide v2

    iget-wide v4, v1, Lcom/youku/vo/DropWordResult;->currWordTime:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 125
    iget-object v2, v1, Lcom/youku/vo/DropWordResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/DropWordResult;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$300(Lcom/tudou/ui/fragment/SearchTudouFragment;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$200(Lcom/tudou/ui/fragment/SearchTudouFragment;)Lcom/tudou/adapter/SearchSuggestAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$200(Lcom/tudou/ui/fragment/SearchTudouFragment;)Lcom/tudou/adapter/SearchSuggestAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tudou/adapter/SearchSuggestAdapter;->setWords(Lcom/youku/vo/DropWordResult;)V

    .line 130
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$300(Lcom/tudou/ui/fragment/SearchTudouFragment;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/tudou/ui/fragment/SearchTudouFragment$1$1;

    invoke-direct {v3, p0, v1}, Lcom/tudou/ui/fragment/SearchTudouFragment$1$1;-><init>(Lcom/tudou/ui/fragment/SearchTudouFragment$1;Lcom/youku/vo/DropWordResult;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-boolean v2, v2, Lcom/youku/widget/SearchHeadLayout;->isShowSuggestWord:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$500(Lcom/tudou/ui/fragment/SearchTudouFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v2, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 142
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iput v6, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    .line 143
    invoke-static {}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$600()Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v6, v2, v3}, Lcom/tudou/ui/fragment/SearchManager;->goFragmentHot(ILcom/tudou/ui/fragment/SearchTudouHotFragment;Lcom/tudou/ui/fragment/SearchTudouFragment;)V

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$500(Lcom/tudou/ui/fragment/SearchTudouFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v2, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    if-nez v2, :cond_3

    .line 149
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v2, v6}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$700(Lcom/tudou/ui/fragment/SearchTudouFragment;Z)V

    goto/16 :goto_0

    .line 151
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v2, v7}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$700(Lcom/tudou/ui/fragment/SearchTudouFragment;Z)V

    goto/16 :goto_0

    .line 154
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v2, v7}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$700(Lcom/tudou/ui/fragment/SearchTudouFragment;Z)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "currEditKey":Ljava/lang/String;
    .end local v1    # "tempWord":Lcom/youku/vo/DropWordResult;
    :pswitch_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v2, v7}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$700(Lcom/tudou/ui/fragment/SearchTudouFragment;Z)V

    goto/16 :goto_0

    .line 161
    :pswitch_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v2, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v2}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 162
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v2, v6}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$700(Lcom/tudou/ui/fragment/SearchTudouFragment;Z)V

    goto/16 :goto_0

    .line 164
    :cond_5
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-static {v2, v7}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$700(Lcom/tudou/ui/fragment/SearchTudouFragment;Z)V

    goto/16 :goto_0

    .line 167
    :pswitch_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->tempKeyWord:Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v4, v4, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v5, v5, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/widget/SearchHeadLayout;->setEditText(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
