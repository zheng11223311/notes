.class Lcom/tudou/adapter/SubscribeAdapter$11;
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

.field final synthetic val$finalitem:Lcom/tudou/adapter/SubscribeItem;

.field final synthetic val$user:Lcom/youku/vo/SubscribeBean$UserInfo;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$UserInfo;Lcom/tudou/adapter/SubscribeItem;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$11;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter$11;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iput-object p3, p0, Lcom/tudou/adapter/SubscribeAdapter$11;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 709
    const-string v2, "subscribe_share"

    const-wide/16 v4, 0x320

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 726
    :goto_0
    return-void

    .line 712
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/adapter/SubscribeAdapter$11;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/adapter/SubscribeAdapter$11;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->subscribeItemViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/adapter/SubscribeAdapter$11;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    .line 718
    .local v18, "data":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 719
    const-string v2, "t1.subscribe_ssubscribe.share"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 720
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->title:Ljava/lang/String;

    .line 721
    .local v3, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/adapter/SubscribeAdapter$11;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/SubscribeAdapter;->access$100(Lcom/tudou/adapter/SubscribeAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->playLink:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->code:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->bigPic:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tudou/adapter/SubscribeAdapter$11;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v7, v7, Lcom/youku/vo/SubscribeBean$UserInfo;->short_desc:Ljava/lang/String;

    const/4 v8, 0x6

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tudou/adapter/SubscribeAdapter$11;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v11, v11, Lcom/youku/vo/SubscribeBean$UserInfo;->short_desc:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v2 .. v17}, Lcom/tudou/android/TudouApi;->shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
