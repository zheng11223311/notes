.class Lcom/tudou/adapter/SubscribeAdapter$4;
.super Ljava/lang/Object;
.source "SubscribeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SubscribeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/SubscribeAdapter;

.field final synthetic val$type:I

.field final synthetic val$user:Lcom/youku/vo/SubscribeBean$Recommend;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$Recommend;I)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$4;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter$4;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iput p3, p0, Lcom/tudou/adapter/SubscribeAdapter$4;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 386
    const-string v2, "subscribe_share"

    const-wide/16 v4, 0x320

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    :goto_0
    return-void

    .line 389
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 390
    const-string v2, "t1.subscribe_ssubscribe.share"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/adapter/SubscribeAdapter$4;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v3, v2, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->title:Ljava/lang/String;

    .line 392
    .local v3, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/adapter/SubscribeAdapter$4;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/SubscribeAdapter;->access$100(Lcom/tudou/adapter/SubscribeAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/adapter/SubscribeAdapter$4;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->playLink:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/adapter/SubscribeAdapter$4;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->code:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tudou/adapter/SubscribeAdapter$4;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v6, v6, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v6, v6, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->bigPic:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tudou/adapter/SubscribeAdapter$4;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v7, v7, Lcom/youku/vo/SubscribeBean$Recommend;->short_desc:Ljava/lang/String;

    const/4 v8, 0x6

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tudou/adapter/SubscribeAdapter$4;->val$user:Lcom/youku/vo/SubscribeBean$Recommend;

    iget-object v11, v11, Lcom/youku/vo/SubscribeBean$Recommend;->short_desc:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/tudou/adapter/SubscribeAdapter$4;->val$type:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    const/4 v13, 0x1

    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v2 .. v17}, Lcom/tudou/android/TudouApi;->shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    goto :goto_1
.end method
