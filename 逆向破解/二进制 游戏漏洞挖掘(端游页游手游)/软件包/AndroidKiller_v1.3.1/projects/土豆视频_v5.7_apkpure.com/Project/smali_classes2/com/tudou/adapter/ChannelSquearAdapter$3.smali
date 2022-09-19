.class Lcom/tudou/adapter/ChannelSquearAdapter$3;
.super Ljava/lang/Object;
.source "ChannelSquearAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ChannelSquearAdapter;->setViewHolderData(Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;ILandroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

.field final synthetic val$aListView:Landroid/widget/ListView;

.field final synthetic val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

.field final synthetic val$viewholder:Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ChannelSquearAdapter;Lcom/youku/vo/DiscoveryChannelItem;Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iput-object p3, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$viewholder:Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;

    iput-object p4, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$aListView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 25
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add_subscribe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget v4, v4, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    :goto_0
    return-void

    .line 258
    :cond_0
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v22, "resultIntent":Landroid/content/Intent;
    const-string v3, "isneedfesh"

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-static {v3}, Lcom/tudou/adapter/ChannelSquearAdapter;->access$000(Lcom/tudou/adapter/ChannelSquearAdapter;)Lcom/tudou/ui/activity/ChannelSquareActivity;

    move-result-object v3

    const v4, 0x44da45

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Lcom/tudou/ui/activity/ChannelSquareActivity;->setResult(ILandroid/content/Intent;)V

    .line 264
    const/16 v23, 0x0

    .line 265
    .local v23, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget v3, v3, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 266
    const-string v23, "\u53d6\u6d88\u8ba2\u9605"

    .line 270
    :goto_1
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 271
    .local v21, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v3, "ct"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-static {v4}, Lcom/tudou/adapter/ChannelSquearAdapter;->access$100(Lcom/tudou/adapter/ChannelSquearAdapter;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v3, "t1.channel_personal.subscribe"

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    move-object/from16 v24, p1

    .line 277
    check-cast v24, Landroid/widget/ImageView;

    .line 278
    .local v24, "v1":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/youku/vo/DiscoveryChannelItem;->isRunning:Z

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget v3, v3, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$viewholder:Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;

    iget-object v3, v3, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->progressIcon:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    const/4 v3, 0x4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    invoke-static {}, Lcom/tudou/service/attention/AttentionManagerImpl;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-static {v4}, Lcom/tudou/adapter/ChannelSquearAdapter;->access$000(Lcom/tudou/adapter/ChannelSquearAdapter;)Lcom/tudou/ui/activity/ChannelSquareActivity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget v6, v6, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget v6, v6, Lcom/youku/vo/DiscoveryChannelItem;->type:I

    new-instance v7, Lcom/tudou/adapter/ChannelSquearAdapter$3$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/tudou/adapter/ChannelSquearAdapter$3$1;-><init>(Lcom/tudou/adapter/ChannelSquearAdapter$3;Landroid/widget/ImageView;)V

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/tudou/service/attention/IAttention;->cancelAttention(Landroid/content/Context;Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    goto/16 :goto_0

    .line 268
    .end local v21    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "v1":Landroid/widget/ImageView;
    :cond_1
    const-string v23, "\u8ba2\u9605"

    goto/16 :goto_1

    .line 322
    .restart local v21    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "v1":Landroid/widget/ImageView;
    :cond_2
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-nez v3, :cond_4

    .line 323
    const/4 v11, 0x0

    .line 324
    .local v11, "lastItemTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget-object v3, v3, Lcom/youku/vo/DiscoveryChannelItem;->first_item:Lcom/youku/vo/DiscoveryChannelItem$FirstItem;

    if-eqz v3, :cond_3

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget-object v3, v3, Lcom/youku/vo/DiscoveryChannelItem;->first_item:Lcom/youku/vo/DiscoveryChannelItem$FirstItem;

    iget-object v11, v3, Lcom/youku/vo/DiscoveryChannelItem$FirstItem;->title:Ljava/lang/String;

    .line 327
    :cond_3
    invoke-static {}, Lcom/tudou/service/attention/AttentionManagerImpl;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v3

    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget v5, v5, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget-object v6, v6, Lcom/youku/vo/DiscoveryChannelItem;->pic:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget-object v7, v7, Lcom/youku/vo/DiscoveryChannelItem;->video_count:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget-boolean v8, v8, Lcom/youku/vo/DiscoveryChannelItem;->isVuser:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget-object v9, v9, Lcom/youku/vo/DiscoveryChannelItem;->nick:Ljava/lang/String;

    const/4 v10, 0x2

    new-instance v12, Lcom/tudou/adapter/ChannelSquearAdapter$3$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v12, v0, v1}, Lcom/tudou/adapter/ChannelSquearAdapter$3$2;-><init>(Lcom/tudou/adapter/ChannelSquearAdapter$3;Landroid/widget/ImageView;)V

    invoke-interface/range {v3 .. v12}, Lcom/tudou/service/attention/IAttention;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iput-object v4, v3, Lcom/tudou/adapter/ChannelSquearAdapter;->loginItem:Lcom/youku/vo/DiscoveryChannelItem;

    goto/16 :goto_0

    .line 358
    .end local v11    # "lastItemTitle":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$viewholder:Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;

    iget-object v3, v3, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->progressIcon:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 359
    const/4 v3, 0x4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    invoke-static {}, Lcom/tudou/service/attention/AttentionManagerImpl;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-static {v3}, Lcom/tudou/adapter/ChannelSquearAdapter;->access$000(Lcom/tudou/adapter/ChannelSquearAdapter;)Lcom/tudou/ui/activity/ChannelSquareActivity;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget v4, v4, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget-object v15, v3, Lcom/youku/vo/DiscoveryChannelItem;->pic:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget-object v3, v3, Lcom/youku/vo/DiscoveryChannelItem;->video_count:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget-object v0, v3, Lcom/youku/vo/DiscoveryChannelItem;->nick:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget v0, v3, Lcom/youku/vo/DiscoveryChannelItem;->type:I

    move/from16 v19, v0

    new-instance v20, Lcom/tudou/adapter/ChannelSquearAdapter$3$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/tudou/adapter/ChannelSquearAdapter$3$3;-><init>(Lcom/tudou/adapter/ChannelSquearAdapter$3;Landroid/widget/ImageView;)V

    invoke-interface/range {v12 .. v20}, Lcom/tudou/service/attention/IAttention;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    goto/16 :goto_0
.end method
