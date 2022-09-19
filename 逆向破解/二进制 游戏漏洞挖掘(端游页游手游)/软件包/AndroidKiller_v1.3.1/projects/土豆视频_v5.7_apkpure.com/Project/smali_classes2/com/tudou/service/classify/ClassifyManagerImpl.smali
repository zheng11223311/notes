.class public Lcom/tudou/service/classify/ClassifyManagerImpl;
.super Lcom/tudou/service/classify/ClassifyManager;
.source "ClassifyManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tudou/service/classify/ClassifyManager;-><init>()V

    return-void
.end method

.method private convertChannelFilter(Lcom/youku/vo/ChannelFliterBean;)V
    .locals 4
    .param p1, "filter"    # Lcom/youku/vo/ChannelFliterBean;

    .prologue
    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 75
    iget-object v2, p1, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v2, v2, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_1

    .line 76
    iget-object v2, p1, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v2, v2, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;

    iget-object v2, v2, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;->name:Ljava/lang/String;

    const-string v3, "\u53ef\u70b9\u64ad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p1, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v2, v2, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 75
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "j":I
    :cond_2
    return-void
.end method


# virtual methods
.method public deleteHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 88
    sget-object v0, Lcom/tudou/service/classify/ClassifyManagerImpl;->handlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/tudou/service/classify/ClassifyManagerImpl;->handlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    return-void
.end method

.method public getChannalList(Landroid/os/Handler;)V
    .locals 7
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 145
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getChannelListV5()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "channelUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "formatUri":Ljava/lang/String;
    invoke-static {v1}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    :try_start_0
    invoke-static {v1}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/youku/vo/ChannelListV5;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ChannelListV5;

    .line 152
    .local v4, "mChannalListV5":Lcom/youku/vo/ChannelListV5;
    sput-object v4, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v4    # "mChannalListV5":Lcom/youku/vo/ChannelListV5;
    :cond_0
    :goto_0
    const-class v5, Lcom/youku/network/IHttpRequest;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/network/IHttpRequest;

    .line 158
    .local v3, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v2, Lcom/youku/network/HttpIntent;

    invoke-direct {v2, v0}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v5, Lcom/tudou/service/classify/ClassifyManagerImpl$3;

    invoke-direct {v5, p0, p1}, Lcom/tudou/service/classify/ClassifyManagerImpl$3;-><init>(Lcom/tudou/service/classify/ClassifyManagerImpl;Landroid/os/Handler;)V

    invoke-interface {v3, v2, v5}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 188
    return-void

    .line 153
    .end local v2    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v3    # "httpRequest":Lcom/youku/network/IHttpRequest;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public getChannelLabelTop(ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 5
    .param p1, "pageNum"    # I
    .param p2, "module_id"    # Ljava/lang/String;
    .param p3, "module_prot_id"    # Ljava/lang/String;
    .param p4, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 350
    invoke-static {p1, p2, p3}, Lcom/youku/http/TudouURLContainer;->getChannelLabelTopURL(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "channelUrl":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 353
    .local v2, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-direct {v1, v0}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/service/classify/ClassifyManagerImpl$5;

    invoke-direct {v3, p0, p4, p1}, Lcom/tudou/service/classify/ClassifyManagerImpl$5;-><init>(Lcom/tudou/service/classify/ClassifyManagerImpl;Landroid/os/Handler;I)V

    invoke-interface {v2, v1, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 391
    return-void
.end method

.method public getChannelsFilterData(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 5
    .param p1, "firstTagId"    # Ljava/lang/String;
    .param p2, "tagType"    # Ljava/lang/String;
    .param p3, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 38
    invoke-static {p1, p2}, Lcom/youku/http/TudouURLContainer;->getFilterChannelVediosV4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "tempFilterUrl":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 41
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/service/classify/ClassifyManagerImpl$1;

    invoke-direct {v3, p0, p3}, Lcom/tudou/service/classify/ClassifyManagerImpl$1;-><init>(Lcom/tudou/service/classify/ClassifyManagerImpl;Landroid/os/Handler;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 70
    return-void
.end method

.method public getClassifyFeature(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 5
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 249
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getChannelFeatureURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "channelUrl":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 252
    .local v2, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-direct {v1, v0}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/service/classify/ClassifyManagerImpl$4;

    invoke-direct {v3, p0, p2}, Lcom/tudou/service/classify/ClassifyManagerImpl$4;-><init>(Lcom/tudou/service/classify/ClassifyManagerImpl;Landroid/os/Handler;)V

    invoke-interface {v2, v1, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 288
    return-void
.end method

.method public getSelectVideoList(Lcom/youku/vo/SkipInfo;ILandroid/os/Handler;)V
    .locals 9
    .param p1, "mSkipInfo"    # Lcom/youku/vo/SkipInfo;
    .param p2, "pageNum"    # I
    .param p3, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 95
    iget-object v0, p1, Lcom/youku/vo/SkipInfo;->first_tag_id:Ljava/lang/String;

    .line 96
    .local v0, "firstTagId":Ljava/lang/String;
    iget-object v1, p1, Lcom/youku/vo/SkipInfo;->tag_type:Ljava/lang/String;

    .line 97
    .local v1, "tagType":Ljava/lang/String;
    iget-object v2, p1, Lcom/youku/vo/SkipInfo;->brief_filter:Ljava/lang/String;

    .line 98
    .local v2, "tags":Ljava/lang/String;
    iget-object v5, p1, Lcom/youku/vo/SkipInfo;->brief_sort_by:Ljava/lang/String;

    .line 100
    .local v5, "sort":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "30"

    invoke-static/range {v0 .. v5}, Lcom/youku/http/TudouURLContainer;->getUGCChannelVediosV4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "channelUrl":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/network/IHttpRequest;

    .line 103
    .local v8, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v7, Lcom/youku/network/HttpIntent;

    invoke-direct {v7, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v7, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/service/classify/ClassifyManagerImpl$2;

    invoke-direct {v3, p0, p3, p2}, Lcom/tudou/service/classify/ClassifyManagerImpl$2;-><init>(Lcom/tudou/service/classify/ClassifyManagerImpl;Landroid/os/Handler;I)V

    invoke-interface {v8, v7, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 141
    return-void
.end method

.method public goClassifyAllChannel(Landroid/content/Context;Lcom/youku/vo/SkipInfo;Z)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mSkipInfo"    # Lcom/youku/vo/SkipInfo;
    .param p3, "isShowTitle"    # Z

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/ClassifyAllChannelActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    const-string v1, "show_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    const-string v1, "skip_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 201
    invoke-static {p1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method public goClassifyFeatureFragment(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 298
    sget-object v3, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v3, v3, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v3, v3, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v3, v3, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v3, v3, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v3, v3, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const/4 v2, 0x0

    .line 303
    .local v2, "isExist":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v3, v3, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v3, v3, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 304
    sget-object v3, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v3, v3, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v3, v3, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/ChannelListInfo;

    iget-object v3, v3, Lcom/youku/vo/ChannelListInfo;->channel_id:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    const/4 v2, 0x1

    .line 303
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_3
    if-nez v2, :cond_4

    .line 309
    const-string v3, "\u6570\u636e\u83b7\u53d6\u5931\u8d25"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v1, "intent":Landroid/content/Intent;
    const-class v3, Lcom/tudou/ui/activity/ClassifyFeatureActivity;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 315
    const-string v3, "cid"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public goClassifyHome(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    const-class v1, Lcom/tudou/ui/activity/ClassifyHomeActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 213
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "mContext":Landroid/content/Context;
    const v1, 0x7f04001c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 214
    return-void
.end method

.method public goClassifySelectedResults(Landroid/content/Context;Lcom/youku/vo/SkipInfo;Z)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mSkipInfo"    # Lcom/youku/vo/SkipInfo;
    .param p3, "isShowTitle"    # Z

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/ClassifySelectedResultsActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 225
    const-string v1, "show_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    const-string v1, "skip_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 227
    invoke-static {p1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method public goRowPieceTableActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/RowPieceTableActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 329
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    const-string v1, "cid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    :cond_0
    invoke-static {p1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 338
    return-void

    .line 332
    :cond_1
    const-string v1, "cid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public goVipActivity(Landroid/content/Context;Lcom/youku/vo/SkipInfo;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mSkipInfo"    # Lcom/youku/vo/SkipInfo;

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/ClassifyVipActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 239
    const-string v1, "skip_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 240
    invoke-static {p1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 241
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    sget-object v0, Lcom/tudou/service/classify/ClassifyManagerImpl;->handlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void
.end method
