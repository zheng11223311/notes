.class Lcom/tudou/adapter/SubscribeAdapter$18;
.super Ljava/lang/Object;
.source "SubscribeAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

.field final synthetic val$pointImages:[Landroid/widget/ImageView;

.field final synthetic val$user:Lcom/youku/vo/SubscribeBean$UserInfo;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter;[Landroid/widget/ImageView;Lcom/youku/vo/SubscribeBean$UserInfo;Lcom/tudou/adapter/SubscribeItem;)V
    .locals 0

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$pointImages:[Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iput-object p4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1319
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 1324
    return-void
.end method

.method public onPageSelected(I)V
    .locals 10
    .param p1, "arg0"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, -0x373738

    .line 1329
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$pointImages:[Landroid/widget/ImageView;

    array-length v4, v4

    rem-int v3, p1, v4

    .line 1331
    .local v3, "position":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$pointImages:[Landroid/widget/ImageView;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 1332
    if-ne v2, v3, :cond_0

    .line 1333
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$pointImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    const v5, 0x7f0208bd

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1331
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1336
    :cond_0
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$pointImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    const v5, 0x7f0208bc

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 1342
    :cond_1
    const-string v0, ""

    .line 1343
    .local v0, "cacheCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    if-ne v4, v9, :cond_2

    .line 1344
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    .line 1346
    .local v1, "data":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->stripeTop:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->formatTotalTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->title:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1349
    iget-object v0, v1, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->code:Ljava/lang/String;

    .line 1360
    .end local v1    # "data":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
    :goto_2
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v4, v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$702(Lcom/tudou/adapter/SubscribeAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 1363
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1365
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v5, "\u5df2\u7f13\u5b58"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1368
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1369
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v5, 0x7f0208b7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1394
    :goto_3
    return-void

    .line 1352
    :cond_2
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    .line 1354
    .local v1, "data":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->stripeTop:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->updateInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->title:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    iget-object v0, v1, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->code:Ljava/lang/String;

    goto :goto_2

    .line 1372
    .end local v1    # "data":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;
    :cond_3
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    if-ne v4, v9, :cond_4

    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    invoke-virtual {v4}, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->canDownload()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    if-ne v4, v8, :cond_6

    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v4, v4, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    invoke-virtual {v4}, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->canDownload()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1377
    :cond_5
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v5, "\u7f13\u5b58"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const v5, -0x69696a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1380
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1382
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v5, 0x7f0208b6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1385
    :cond_6
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v5, "\u7f13\u5b58"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1388
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1390
    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$18;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v5, 0x7f0208b8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3
.end method
