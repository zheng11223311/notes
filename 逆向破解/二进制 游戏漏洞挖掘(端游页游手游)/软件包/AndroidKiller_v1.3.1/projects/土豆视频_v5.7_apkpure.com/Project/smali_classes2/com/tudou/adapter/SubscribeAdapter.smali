.class public Lcom/tudou/adapter/SubscribeAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubscribeAdapter.java"


# static fields
.field private static final FAIL:I = 0x2712

.field private static final SUCCESS:I = 0x2711


# instance fields
.field private curCode:Ljava/lang/String;

.field private fragment:Landroid/support/v4/app/Fragment;

.field private isAlbum:Z

.field private is_rec:Z

.field private mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

.field private mHandler:Landroid/os/Handler;

.field private mSubLocalHandler:Landroid/os/Handler;

.field private mSubRecCount:I

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subscribebean:Lcom/youku/vo/SubscribeBean;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/tudou/ui/activity/BaseActivity;Lcom/youku/vo/SubscribeBean;ZLandroid/os/Handler;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "aBaseActivity"    # Lcom/tudou/ui/activity/BaseActivity;
    .param p3, "aData"    # Lcom/youku/vo/SubscribeBean;
    .param p4, "isAlbum"    # Z
    .param p5, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->mSubRecCount:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->mUriList:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/tudou/adapter/SubscribeAdapter$1;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/SubscribeAdapter$1;-><init>(Lcom/tudou/adapter/SubscribeAdapter;)V

    iput-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->mSubLocalHandler:Landroid/os/Handler;

    .line 74
    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 75
    iput-object p3, p0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    .line 76
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter;->fragment:Landroid/support/v4/app/Fragment;

    .line 77
    iput-boolean p4, p0, Lcom/tudou/adapter/SubscribeAdapter;->isAlbum:Z

    .line 78
    iput-object p5, p0, Lcom/tudou/adapter/SubscribeAdapter;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/SubscribeAdapter;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/SubscribeAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/SubscribeAdapter;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/SubscribeAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/adapter/SubscribeAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/SubscribeAdapter;

    .prologue
    .line 49
    iget v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->mSubRecCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/tudou/adapter/SubscribeAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/adapter/SubscribeAdapter;

    .prologue
    .line 49
    iget v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->mSubRecCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/adapter/SubscribeAdapter;->mSubRecCount:I

    return v0
.end method

.method static synthetic access$210(Lcom/tudou/adapter/SubscribeAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/adapter/SubscribeAdapter;

    .prologue
    .line 49
    iget v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->mSubRecCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tudou/adapter/SubscribeAdapter;->mSubRecCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/tudou/adapter/SubscribeAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/SubscribeAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->mUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/adapter/SubscribeAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/SubscribeAdapter;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tudou/adapter/SubscribeAdapter;->setRecSubListPic()V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/adapter/SubscribeAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/SubscribeAdapter;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tudou/adapter/SubscribeAdapter;->getFormat()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/tudou/adapter/SubscribeAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/SubscribeAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/adapter/SubscribeAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/SubscribeAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->curCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/tudou/adapter/SubscribeAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/SubscribeAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter;->curCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/tudou/adapter/SubscribeAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/SubscribeAdapter;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->isAlbum:Z

    return v0
.end method

.method public static clearSubscribeCount(II)V
    .locals 5
    .param p0, "id"    # I
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 2265
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 2267
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p0, p1}, Lcom/youku/http/TudouURLContainer;->clearSubscribeUpdateCount(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2270
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/adapter/SubscribeAdapter$27;

    invoke-direct {v2}, Lcom/tudou/adapter/SubscribeAdapter$27;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 2283
    return-void
.end method

.method private getFormat()I
    .locals 3

    .prologue
    .line 2293
    const-string v2, "resolution_save"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2294
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    .line 2295
    .local v1, "formatint":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2296
    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2297
    const/4 v1, 0x7

    .line 2298
    :cond_0
    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2299
    const/4 v1, 0x1

    .line 2300
    :cond_1
    const-string v2, "\u6807\u6e05"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2301
    const/4 v1, 0x3

    .line 2303
    :cond_2
    return v1
.end method

.method private setRecSubListPic()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2352
    const-string v0, ""

    .line 2353
    .local v0, "uri1":Ljava/lang/String;
    const-string v1, ""

    .line 2354
    .local v1, "uri2":Ljava/lang/String;
    const-string v2, ""

    .line 2355
    .local v2, "uri3":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2356
    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter;->mUriList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri1":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 2358
    .restart local v0    # "uri1":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_1

    .line 2359
    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "uri2":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 2361
    .restart local v1    # "uri2":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_2

    .line 2362
    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "uri3":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 2364
    .restart local v2    # "uri3":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter;->fragment:Landroid/support/v4/app/Fragment;

    check-cast v3, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-virtual {v3, v0, v1, v2}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->setSubListPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2308
    iget-boolean v1, p0, Lcom/tudou/adapter/SubscribeAdapter;->is_rec:Z

    if-eqz v1, :cond_2

    .line 2309
    iget-boolean v1, p0, Lcom/tudou/adapter/SubscribeAdapter;->isAlbum:Z

    if-eqz v1, :cond_1

    .line 2321
    :cond_0
    :goto_0
    return v0

    .line 2312
    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 2314
    :cond_2
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2315
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 2317
    :cond_3
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v1, v1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v1, v1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v1, v1, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2319
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2329
    iget-boolean v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->is_rec:Z

    if-eqz v0, :cond_0

    .line 2330
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2340
    :goto_0
    return-object v0

    .line 2332
    :cond_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2333
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2335
    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2337
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2340
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2348
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoginStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2286
    const-string v0, "\u672a\u767b\u5f55"

    .line 2287
    .local v0, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2288
    const-string v0, "\u5df2\u767b\u5f55"

    .line 2289
    :cond_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 33
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 105
    const/16 v28, 0x0

    .line 107
    .local v28, "subscribeItem":Lcom/tudou/adapter/SubscribeItem;
    if-nez p2, :cond_3

    .line 108
    new-instance v28, Lcom/tudou/adapter/SubscribeItem;

    .end local v28    # "subscribeItem":Lcom/tudou/adapter/SubscribeItem;
    invoke-direct/range {v28 .. v28}, Lcom/tudou/adapter/SubscribeItem;-><init>()V

    .line 109
    .restart local v28    # "subscribeItem":Lcom/tudou/adapter/SubscribeItem;
    move-object/from16 p2, v28

    .line 114
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->is_rec:Z

    if-eqz v3, :cond_a

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean;->results:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SubscribeBean$Recommend;

    .line 118
    .local v5, "user":Lcom/youku/vo/SubscribeBean$Recommend;
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->userName:Landroid/widget/TextView;

    iget-object v4, v5, Lcom/youku/vo/SubscribeBean$Recommend;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->userImage:Landroid/widget/ImageView;

    const v4, 0x7f020616

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    if-eqz v3, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v5, Lcom/youku/vo/SubscribeBean$Recommend;->avatar:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/tudou/adapter/SubscribeItem;->userImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 125
    :cond_0
    iget-object v0, v5, Lcom/youku/vo/SubscribeBean$Recommend;->podcast_user_id:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 126
    .local v30, "tmpuserid":Ljava/lang/String;
    const/16 v29, 0x2

    .line 128
    .local v29, "tmptype":I
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    iget-object v0, v5, Lcom/youku/vo/SubscribeBean$Recommend;->album_id:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 130
    const/16 v29, 0x1

    .line 133
    :cond_1
    iget-boolean v3, v5, Lcom/youku/vo/SubscribeBean$Recommend;->isVuser:Z

    if-eqz v3, :cond_4

    .line 134
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->vuserimg:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    :goto_1
    move-object/from16 v7, v30

    .line 139
    .local v7, "userid":Ljava/lang/String;
    move/from16 v8, v29

    .line 141
    .local v8, "type":I
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->imgSubscribe:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-boolean v3, v5, Lcom/youku/vo/SubscribeBean$Recommend;->isSubed:Z

    if-eqz v3, :cond_5

    .line 143
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->imgSubscribe:Landroid/widget/ImageView;

    const v4, 0x7f020851

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 147
    :goto_2
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->imgUserChanel:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->numlayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num_bg:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    move-object/from16 v6, v28

    .line 153
    .local v6, "finalSubscribeItem":Lcom/tudou/adapter/SubscribeItem;
    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/tudou/adapter/SubscribeItem;->imgSubscribe:Landroid/widget/ImageView;

    new-instance v3, Lcom/tudou/adapter/SubscribeAdapter$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/tudou/adapter/SubscribeAdapter$2;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$Recommend;Lcom/tudou/adapter/SubscribeItem;Ljava/lang/String;I)V

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 2257
    .end local v5    # "user":Lcom/youku/vo/SubscribeBean$Recommend;
    .end local v6    # "finalSubscribeItem":Lcom/tudou/adapter/SubscribeItem;
    .end local v7    # "userid":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v29    # "tmptype":I
    .end local v30    # "tmpuserid":Ljava/lang/String;
    :cond_2
    :goto_3
    return-object p2

    :cond_3
    move-object/from16 v28, p2

    .line 111
    check-cast v28, Lcom/tudou/adapter/SubscribeItem;

    goto/16 :goto_0

    .line 136
    .restart local v5    # "user":Lcom/youku/vo/SubscribeBean$Recommend;
    .restart local v29    # "tmptype":I
    .restart local v30    # "tmpuserid":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->vuserimg:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 145
    .restart local v7    # "userid":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_5
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->imgSubscribe:Landroid/widget/ImageView;

    const v4, 0x7f020852

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 235
    .restart local v6    # "finalSubscribeItem":Lcom/tudou/adapter/SubscribeItem;
    :cond_6
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v12, v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->code:Ljava/lang/String;

    .line 236
    .local v12, "itemCode":Ljava/lang/String;
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v13, v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->title:Ljava/lang/String;

    .line 237
    .local v13, "itemTitle":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v14, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    .line 238
    .local v14, "txt_cache":Landroid/widget/TextView;
    move-object/from16 v0, v28

    iget-object v15, v0, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    .line 239
    .local v15, "img_cache":Landroid/widget/ImageView;
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v11, v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->playLink:Ljava/lang/String;

    .line 242
    .local v11, "playLink":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/tudou/adapter/SubscribeAdapter$3;

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Lcom/tudou/adapter/SubscribeAdapter$3;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 360
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v4, "\u5df2\u7f13\u5b58"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const v4, -0x373738

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 363
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v4, 0x7f0208b7

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    :goto_4
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_share:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v8}, Lcom/tudou/adapter/SubscribeAdapter$4;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$Recommend;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v21, "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/YoukuImageView;>;"
    const/4 v3, 0x2

    if-ne v8, v3, :cond_9

    .line 405
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->juji_img:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->updateTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u89c6\u9891 "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v5, Lcom/youku/vo/SubscribeBean$Recommend;->video_count:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "  |  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\u8ba2\u9605 "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v5, Lcom/youku/vo/SubscribeBean$Recommend;->subed_count:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0302d8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    .line 412
    .local v32, "v":Landroid/widget/LinearLayout;
    new-instance v23, Lcom/youku/widget/YoukuImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/youku/widget/YoukuImageView;-><init>(Landroid/content/Context;)V

    .line 413
    .local v23, "iv":Lcom/youku/widget/YoukuImageView;
    const v3, 0x7f0c0ceb

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    check-cast v23, Lcom/youku/widget/YoukuImageView;

    .line 415
    .restart local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->bigPic:Ljava/lang/String;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v4, v3, v0, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 419
    new-instance v3, Lcom/tudou/adapter/SubscribeAdapter$5;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v5, v1}, Lcom/tudou/adapter/SubscribeAdapter$5;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$Recommend;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/youku/widget/YoukuImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 432
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/tudou/adapter/SubscribeItem;->stripeTop:Landroid/widget/TextView;

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->formatTotalTime:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/tudou/adapter/SubscribeItem;->title:Landroid/widget/TextView;

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->titleBar:Landroid/view/View;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v8, v7}, Lcom/tudou/adapter/SubscribeAdapter$6;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$Recommend;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    :goto_5
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->subscribeItemViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto/16 :goto_3

    .line 366
    .end local v21    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/YoukuImageView;>;"
    .end local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    .end local v32    # "v":Landroid/widget/LinearLayout;
    :cond_7
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    invoke-virtual {v3}, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->canDownload()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 367
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v4, "\u7f13\u5b58"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const v4, -0x69696a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 370
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v4, 0x7f0208b6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 373
    :cond_8
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v4, "\u7f13\u5b58"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const v4, -0x373738

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 376
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v4, 0x7f0208b8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 471
    .restart local v21    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/YoukuImageView;>;"
    :cond_9
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->juji_img:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->updateTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/youku/vo/SubscribeBean$Recommend;->latest_update:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "  |  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\u8ba2\u9605 "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v5, Lcom/youku/vo/SubscribeBean$Recommend;->subed_count:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0302d8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    .line 478
    .restart local v32    # "v":Landroid/widget/LinearLayout;
    new-instance v23, Lcom/youku/widget/YoukuImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/youku/widget/YoukuImageView;-><init>(Landroid/content/Context;)V

    .line 479
    .restart local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    const v3, 0x7f0c0ceb

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    check-cast v23, Lcom/youku/widget/YoukuImageView;

    .line 481
    .restart local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->bigPic:Ljava/lang/String;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v4, v3, v0, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 485
    new-instance v3, Lcom/tudou/adapter/SubscribeAdapter$7;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v5, v1}, Lcom/tudou/adapter/SubscribeAdapter$7;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$Recommend;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/youku/widget/YoukuImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 498
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->stripeTop:Landroid/widget/TextView;

    iget-object v4, v5, Lcom/youku/vo/SubscribeBean$Recommend;->latest_update:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/tudou/adapter/SubscribeItem;->title:Landroid/widget/TextView;

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$Recommend;->last_item:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->titleBar:Landroid/view/View;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v5, v7}, Lcom/tudou/adapter/SubscribeAdapter$8;-><init>(Lcom/tudou/adapter/SubscribeAdapter;ILcom/youku/vo/SubscribeBean$Recommend;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 531
    .end local v5    # "user":Lcom/youku/vo/SubscribeBean$Recommend;
    .end local v6    # "finalSubscribeItem":Lcom/tudou/adapter/SubscribeItem;
    .end local v7    # "userid":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v11    # "playLink":Ljava/lang/String;
    .end local v12    # "itemCode":Ljava/lang/String;
    .end local v13    # "itemTitle":Ljava/lang/String;
    .end local v14    # "txt_cache":Landroid/widget/TextView;
    .end local v15    # "img_cache":Landroid/widget/ImageView;
    .end local v21    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/YoukuImageView;>;"
    .end local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    .end local v29    # "tmptype":I
    .end local v30    # "tmpuserid":Ljava/lang/String;
    .end local v32    # "v":Landroid/widget/LinearLayout;
    :cond_a
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 534
    move-object/from16 v19, v28

    .line 536
    .local v19, "finalitem":Lcom/tudou/adapter/SubscribeItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SubscribeBean$UserInfo;

    .line 539
    .local v5, "user":Lcom/youku/vo/SubscribeBean$UserInfo;
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->userName:Landroid/widget/TextView;

    iget-object v4, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->updateTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->updateTime_str:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\u66f4\u65b0"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->userImage:Landroid/widget/ImageView;

    const v4, 0x7f020616

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    if-eqz v3, :cond_b

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->smallPic:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/tudou/adapter/SubscribeItem;->userImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 547
    :cond_b
    iget-boolean v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->isVuser:Z

    if-eqz v3, :cond_d

    .line 548
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->vuserimg:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    :goto_6
    iget v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->updateCount:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    .line 554
    invoke-virtual {v5}, Lcom/youku/vo/SubscribeBean$UserInfo;->getUpdateCount()V

    .line 555
    :cond_c
    iget v0, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->updateCount:I

    move/from16 v31, v0

    .line 557
    .local v31, "updateCount":I
    if-eqz v31, :cond_f

    .line 558
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->numlayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 559
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num_bg:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    const/16 v3, 0x63

    move/from16 v0, v31

    if-le v0, v3, :cond_e

    .line 562
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num:Landroid/widget/TextView;

    const-string v4, "99+"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    :goto_7
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->imgUserChanel:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->imgSubscribe:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeItem;->numlayout:Landroid/view/View;

    move-object/from16 v25, v0

    .line 577
    .local v25, "numlayout":Landroid/view/View;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .restart local v21    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/YoukuImageView;>;"
    iget v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    .line 582
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->juji_img:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 588
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    .line 591
    .local v22, "item":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_8
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_10

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0302d8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    .line 596
    .restart local v32    # "v":Landroid/widget/LinearLayout;
    new-instance v23, Lcom/youku/widget/YoukuImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/youku/widget/YoukuImageView;-><init>(Landroid/content/Context;)V

    .line 597
    .restart local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    const v3, 0x7f0c0ceb

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    check-cast v23, Lcom/youku/widget/YoukuImageView;

    .line 599
    .restart local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->bigPic:Ljava/lang/String;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v4, v3, v0, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 603
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    .line 606
    .local v16, "data":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
    new-instance v3, Lcom/tudou/adapter/SubscribeAdapter$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v3, v0, v1, v2, v5}, Lcom/tudou/adapter/SubscribeAdapter$9;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;ILcom/youku/vo/SubscribeBean$UserInfo;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/youku/widget/YoukuImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 591
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 550
    .end local v16    # "data":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
    .end local v20    # "i":I
    .end local v21    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/YoukuImageView;>;"
    .end local v22    # "item":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
    .end local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    .end local v25    # "numlayout":Landroid/view/View;
    .end local v31    # "updateCount":I
    .end local v32    # "v":Landroid/widget/LinearLayout;
    :cond_d
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->vuserimg:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 564
    .restart local v31    # "updateCount":I
    :cond_e
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 567
    :cond_f
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->numlayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 568
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 569
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num_bg:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 622
    .restart local v20    # "i":I
    .restart local v21    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/YoukuImageView;>;"
    .restart local v22    # "item":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
    .restart local v25    # "numlayout":Landroid/view/View;
    :cond_10
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->stripeTop:Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->formatTotalTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->title:Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 626
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->isFavourite:Z

    if-eqz v3, :cond_11

    .line 627
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->favourite:Landroid/widget/ImageView;

    const v4, 0x7f020152

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 633
    :goto_9
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeItem;->favourite:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    .line 634
    .local v18, "favour":Landroid/widget/ImageView;
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->favourite:Landroid/widget/ImageView;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v2}, Lcom/tudou/adapter/SubscribeAdapter$10;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    .end local v18    # "favour":Landroid/widget/ImageView;
    :goto_a
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_share:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v5, v1}, Lcom/tudou/adapter/SubscribeAdapter$11;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$UserInfo;Lcom/tudou/adapter/SubscribeItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->titleBar:Landroid/view/View;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$12;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v5, v1}, Lcom/tudou/adapter/SubscribeAdapter$12;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$UserInfo;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    .end local v22    # "item":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
    :goto_b
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/widget/ImageView;

    move-object/from16 v26, v0

    .line 938
    .local v26, "pointImageViews":[Landroid/widget/ImageView;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->point_container:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 940
    const/16 v20, 0x0

    :goto_c
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_17

    .line 941
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v26, v20

    .line 942
    aget-object v3, v26, v20

    const v4, 0x7f0208bc

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 945
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    invoke-direct {v0, v3, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 949
    .local v24, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0xc

    const/4 v4, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 950
    aget-object v3, v26, v20

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->point_container:Landroid/widget/LinearLayout;

    aget-object v4, v26, v20

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 940
    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    .line 630
    .end local v24    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "pointImageViews":[Landroid/widget/ImageView;
    .restart local v22    # "item":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
    :cond_11
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->favourite:Landroid/widget/ImageView;

    const v4, 0x7f02014d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 702
    :cond_12
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->favourite:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 758
    .end local v20    # "i":I
    .end local v22    # "item":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
    :cond_13
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->juji_img:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 760
    if-eqz v5, :cond_2

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    if-eqz v3, :cond_2

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 765
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    .line 768
    .local v22, "item":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_d
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_14

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0302d8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    .line 772
    .restart local v32    # "v":Landroid/widget/LinearLayout;
    new-instance v23, Lcom/youku/widget/YoukuImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/youku/widget/YoukuImageView;-><init>(Landroid/content/Context;)V

    .line 773
    .restart local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    const v3, 0x7f0c0ceb

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    check-cast v23, Lcom/youku/widget/YoukuImageView;

    .line 775
    .restart local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->bigPic:Ljava/lang/String;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v4, v3, v0, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 779
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    .line 782
    .local v16, "data":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;
    new-instance v3, Lcom/tudou/adapter/SubscribeAdapter$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v3, v0, v1, v2, v5}, Lcom/tudou/adapter/SubscribeAdapter$13;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;ILcom/youku/vo/SubscribeBean$UserInfo;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/youku/widget/YoukuImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 768
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 795
    .end local v16    # "data":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;
    .end local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    .end local v32    # "v":Landroid/widget/LinearLayout;
    :cond_14
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->stripeTop:Landroid/widget/TextView;

    iget-object v4, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->updateInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->title:Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 799
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->isFavourite:Z

    if-eqz v3, :cond_15

    .line 800
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->favourite:Landroid/widget/ImageView;

    const v4, 0x7f020152

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 806
    :goto_e
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeItem;->favourite:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    .line 807
    .restart local v18    # "favour":Landroid/widget/ImageView;
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->favourite:Landroid/widget/ImageView;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$14;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v2}, Lcom/tudou/adapter/SubscribeAdapter$14;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    .end local v18    # "favour":Landroid/widget/ImageView;
    :goto_f
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_share:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$15;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v5, v1}, Lcom/tudou/adapter/SubscribeAdapter$15;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$UserInfo;Lcom/tudou/adapter/SubscribeItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->titleBar:Landroid/view/View;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$16;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v5, v1}, Lcom/tudou/adapter/SubscribeAdapter$16;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$UserInfo;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b

    .line 803
    :cond_15
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->favourite:Landroid/widget/ImageView;

    const v4, 0x7f02014d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 877
    :cond_16
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->favourite:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    .line 954
    .end local v22    # "item":Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;
    .restart local v26    # "pointImageViews":[Landroid/widget/ImageView;
    :cond_17
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    .line 955
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->point_container:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 960
    :goto_10
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v26, v3

    if-eqz v3, :cond_18

    .line 961
    const/4 v3, 0x0

    aget-object v3, v26, v3

    const v4, 0x7f0208bd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :cond_18
    :goto_11
    move-object/from16 v27, v26

    .line 970
    .local v27, "pointImages":[Landroid/widget/ImageView;
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/tudou/adapter/SubscribeAdapter$17;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/tudou/adapter/SubscribeItem;[Landroid/widget/ImageView;Lcom/youku/vo/SubscribeBean$UserInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1275
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v4

    iget v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    const/4 v9, 0x2

    if-ne v3, v9, :cond_1a

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->code:Ljava/lang/String;

    :goto_12
    invoke-virtual {v4, v3}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1280
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v4, "\u5df2\u7f13\u5b58"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const v4, -0x373738

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1282
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1283
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v4, 0x7f0208b7

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1310
    :goto_13
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->subscribeItemViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1314
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->subscribeItemViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$18;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v5, v2}, Lcom/tudou/adapter/SubscribeAdapter$18;-><init>(Lcom/tudou/adapter/SubscribeAdapter;[Landroid/widget/ImageView;Lcom/youku/vo/SubscribeBean$UserInfo;Lcom/tudou/adapter/SubscribeItem;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto/16 :goto_3

    .line 957
    .end local v27    # "pointImages":[Landroid/widget/ImageView;
    :cond_19
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->point_container:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10

    .line 963
    :catch_0
    move-exception v17

    .line 964
    .local v17, "e1":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    .line 1275
    .end local v17    # "e1":Ljava/lang/Exception;
    .restart local v27    # "pointImages":[Landroid/widget/ImageView;
    :cond_1a
    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->code:Ljava/lang/String;

    goto :goto_12

    .line 1286
    :cond_1b
    iget v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    invoke-virtual {v3}, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->canDownload()Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_1c
    iget v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    iget-object v3, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    invoke-virtual {v3}, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->canDownload()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1292
    :cond_1d
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v4, "\u7f13\u5b58"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1293
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const v4, -0x69696a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1294
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1295
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v4, 0x7f0208b6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_13

    .line 1298
    :cond_1e
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v4, "\u7f13\u5b58"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const v4, -0x373738

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1300
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1304
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v4, 0x7f0208b8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_13

    .line 1401
    .end local v5    # "user":Lcom/youku/vo/SubscribeBean$UserInfo;
    .end local v19    # "finalitem":Lcom/tudou/adapter/SubscribeItem;
    .end local v20    # "i":I
    .end local v21    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/YoukuImageView;>;"
    .end local v25    # "numlayout":Landroid/view/View;
    .end local v26    # "pointImageViews":[Landroid/widget/ImageView;
    .end local v27    # "pointImages":[Landroid/widget/ImageView;
    .end local v31    # "updateCount":I
    :cond_1f
    move-object/from16 v19, v28

    .line 1403
    .restart local v19    # "finalitem":Lcom/tudou/adapter/SubscribeItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->subscribebean:Lcom/youku/vo/SubscribeBean;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v3, v3, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    .line 1406
    .local v5, "user":Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->userName:Landroid/widget/TextView;

    iget-object v4, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1407
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/tudou/adapter/SubscribeItem;->updateTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    iget-object v3, v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->updateTime_str:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\u66f4\u65b0"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->userImage:Landroid/widget/ImageView;

    const v4, 0x7f020616

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    if-eqz v3, :cond_20

    .line 1411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->smallPic:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/tudou/adapter/SubscribeItem;->userImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1415
    :cond_20
    iget-boolean v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->isVuser:Z

    if-eqz v3, :cond_21

    .line 1416
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->vuserimg:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1420
    :goto_14
    const/16 v31, 0x0

    .line 1425
    .restart local v31    # "updateCount":I
    if-eqz v31, :cond_23

    .line 1426
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->numlayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1427
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1428
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num_bg:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1429
    const/16 v3, 0x63

    move/from16 v0, v31

    if-le v0, v3, :cond_22

    .line 1430
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num:Landroid/widget/TextView;

    const-string v4, "99+"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    :goto_15
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->imgUserChanel:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1441
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->imgSubscribe:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1443
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeItem;->numlayout:Landroid/view/View;

    move-object/from16 v25, v0

    .line 1445
    .restart local v25    # "numlayout":Landroid/view/View;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    .restart local v21    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/YoukuImageView;>;"
    const/4 v3, 0x2

    invoke-virtual {v5}, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->getType()I

    move-result v4

    if-ne v3, v4, :cond_25

    .line 1450
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->juji_img:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1451
    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1455
    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    .line 1458
    .local v22, "item":Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_16
    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_24

    .line 1460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0302d8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    .line 1463
    .restart local v32    # "v":Landroid/widget/LinearLayout;
    new-instance v23, Lcom/youku/widget/YoukuImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/youku/widget/YoukuImageView;-><init>(Landroid/content/Context;)V

    .line 1464
    .restart local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    const v3, 0x7f0c0ceb

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    check-cast v23, Lcom/youku/widget/YoukuImageView;

    .line 1466
    .restart local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    iget-object v3, v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->bigPic:Ljava/lang/String;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v4, v3, v0, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 1470
    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    .line 1473
    .local v16, "data":Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;
    new-instance v3, Lcom/tudou/adapter/SubscribeAdapter$19;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v3, v0, v1, v2, v5}, Lcom/tudou/adapter/SubscribeAdapter$19;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;ILcom/youku/vo/SubLocalscribeBean$SubLocalResult;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/youku/widget/YoukuImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1485
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1458
    add-int/lit8 v20, v20, 0x1

    goto :goto_16

    .line 1418
    .end local v16    # "data":Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;
    .end local v20    # "i":I
    .end local v21    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/YoukuImageView;>;"
    .end local v22    # "item":Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;
    .end local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    .end local v25    # "numlayout":Landroid/view/View;
    .end local v31    # "updateCount":I
    .end local v32    # "v":Landroid/widget/LinearLayout;
    :cond_21
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->vuserimg:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_14

    .line 1432
    .restart local v31    # "updateCount":I
    :cond_22
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 1435
    :cond_23
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->numlayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1436
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1437
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->num_bg:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_15

    .line 1489
    .restart local v20    # "i":I
    .restart local v21    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/YoukuImageView;>;"
    .restart local v22    # "item":Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;
    .restart local v25    # "numlayout":Landroid/view/View;
    :cond_24
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->stripeTop:Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->formatTotalTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1490
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->title:Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1566
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_share:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$20;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v5, v1}, Lcom/tudou/adapter/SubscribeAdapter$20;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;Lcom/tudou/adapter/SubscribeItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1589
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->titleBar:Landroid/view/View;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$21;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v5, v1}, Lcom/tudou/adapter/SubscribeAdapter$21;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1795
    :goto_17
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/widget/ImageView;

    move-object/from16 v26, v0

    .line 1797
    .restart local v26    # "pointImageViews":[Landroid/widget/ImageView;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->point_container:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1799
    const/16 v20, 0x0

    :goto_18
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_27

    .line 1800
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v26, v20

    .line 1801
    aget-object v3, v26, v20

    const v4, 0x7f0208bc

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1804
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    invoke-direct {v0, v3, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1808
    .restart local v24    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0xc

    const/4 v4, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1809
    aget-object v3, v26, v20

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1810
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->point_container:Landroid/widget/LinearLayout;

    aget-object v4, v26, v20

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1799
    add-int/lit8 v20, v20, 0x1

    goto :goto_18

    .line 1621
    .end local v20    # "i":I
    .end local v22    # "item":Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;
    .end local v24    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "pointImageViews":[Landroid/widget/ImageView;
    :cond_25
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->juji_img:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1623
    if-eqz v5, :cond_2

    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1627
    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    .line 1630
    .restart local v22    # "item":Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_19
    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_26

    .line 1631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0302d8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    .line 1634
    .restart local v32    # "v":Landroid/widget/LinearLayout;
    new-instance v23, Lcom/youku/widget/YoukuImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/youku/widget/YoukuImageView;-><init>(Landroid/content/Context;)V

    .line 1635
    .restart local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    const v3, 0x7f0c0ceb

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    check-cast v23, Lcom/youku/widget/YoukuImageView;

    .line 1637
    .restart local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    iget-object v3, v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->bigPic:Ljava/lang/String;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v4, v3, v0, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 1641
    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    .line 1644
    .restart local v16    # "data":Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;
    new-instance v3, Lcom/tudou/adapter/SubscribeAdapter$22;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v3, v0, v1, v2, v5}, Lcom/tudou/adapter/SubscribeAdapter$22;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;ILcom/youku/vo/SubLocalscribeBean$SubLocalResult;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/youku/widget/YoukuImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1653
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1630
    add-int/lit8 v20, v20, 0x1

    goto :goto_19

    .line 1657
    .end local v16    # "data":Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;
    .end local v23    # "iv":Lcom/youku/widget/YoukuImageView;
    .end local v32    # "v":Landroid/widget/LinearLayout;
    :cond_26
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->stripeTop:Landroid/widget/TextView;

    iget-object v4, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->latest_update:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1658
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->title:Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1736
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_share:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$23;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v5, v1}, Lcom/tudou/adapter/SubscribeAdapter$23;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;Lcom/tudou/adapter/SubscribeItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1760
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->titleBar:Landroid/view/View;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$24;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v5, v1}, Lcom/tudou/adapter/SubscribeAdapter$24;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_17

    .line 1813
    .restart local v26    # "pointImageViews":[Landroid/widget/ImageView;
    :cond_27
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_29

    .line 1814
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->point_container:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1819
    :goto_1a
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v26, v3

    if-eqz v3, :cond_28

    .line 1820
    const/4 v3, 0x0

    aget-object v3, v26, v3

    const v4, 0x7f0208bd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1826
    :cond_28
    :goto_1b
    move-object/from16 v27, v26

    .line 1829
    .restart local v27    # "pointImages":[Landroid/widget/ImageView;
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$25;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/tudou/adapter/SubscribeAdapter$25;-><init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/tudou/adapter/SubscribeItem;[Landroid/widget/ImageView;Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2135
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v5}, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->getType()I

    move-result v3

    const/4 v9, 0x2

    if-ne v3, v9, :cond_2a

    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    iget-object v3, v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->code:Ljava/lang/String;

    :goto_1c
    invoke-virtual {v4, v3}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2140
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v4, "\u5df2\u7f13\u5b58"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2141
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const v4, -0x373738

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2142
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2143
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v4, 0x7f0208b7

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2169
    :goto_1d
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->subscribeItemViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2173
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->subscribeItemViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$26;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v5, v2}, Lcom/tudou/adapter/SubscribeAdapter$26;-><init>(Lcom/tudou/adapter/SubscribeAdapter;[Landroid/widget/ImageView;Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;Lcom/tudou/adapter/SubscribeItem;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto/16 :goto_3

    .line 1816
    .end local v27    # "pointImages":[Landroid/widget/ImageView;
    :cond_29
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->point_container:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1a

    .line 1822
    :catch_1
    move-exception v17

    .line 1823
    .restart local v17    # "e1":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b

    .line 2135
    .end local v17    # "e1":Ljava/lang/Exception;
    .restart local v27    # "pointImages":[Landroid/widget/ImageView;
    :cond_2a
    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    iget-object v3, v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->code:Ljava/lang/String;

    goto :goto_1c

    .line 2146
    :cond_2b
    invoke-virtual {v5}, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    invoke-virtual {v3}, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->canDownload()Z

    move-result v3

    if-nez v3, :cond_2d

    :cond_2c
    invoke-virtual {v5}, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e

    iget-object v3, v5, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    invoke-virtual {v3}, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->canDownload()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2151
    :cond_2d
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v4, "\u7f13\u5b58"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2152
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const v4, -0x69696a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2153
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2154
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v4, 0x7f0208b6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1d

    .line 2157
    :cond_2e
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v4, "\u7f13\u5b58"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2158
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const v4, -0x373738

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2159
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2163
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v4, 0x7f0208b8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1d
.end method

.method public setIsRec(Z)V
    .locals 0
    .param p1, "is_rec"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/tudou/adapter/SubscribeAdapter;->is_rec:Z

    .line 101
    return-void
.end method
