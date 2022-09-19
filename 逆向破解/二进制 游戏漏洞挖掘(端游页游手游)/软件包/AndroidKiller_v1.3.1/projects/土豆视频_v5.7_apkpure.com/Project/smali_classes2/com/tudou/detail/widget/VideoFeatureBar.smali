.class public Lcom/tudou/detail/widget/VideoFeatureBar;
.super Landroid/widget/LinearLayout;
.source "VideoFeatureBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;,
        Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;
    }
.end annotation


# instance fields
.field private mFeature:Lcom/tudou/detail/vo/DetailFeature;

.field mFeatureAdapter:Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;

.field private mFeatureListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/detail/widget/VideoFeatureBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tudou/detail/widget/VideoFeatureBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/widget/VideoFeatureBar;)Lcom/tudou/detail/vo/DetailFeature;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoFeatureBar;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeature:Lcom/tudou/detail/vo/DetailFeature;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    const-string v1, "onItemClick"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoFeatureBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 129
    .local v0, "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onBtnFeatureClicked()V

    .line 130
    const-string v1, "t1.detail_sdetail.clipsall"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 132
    .end local v0    # "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 58
    const v1, 0x7f0c0d8f

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/VideoFeatureBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeatureListView:Landroid/widget/ListView;

    .line 59
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeatureListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    const v1, 0x7f0c0d8d

    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/VideoFeatureBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "all":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeature:Lcom/tudou/detail/vo/DetailFeature;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/tudou/detail/vo/DetailFeature;->get(I)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v9

    .line 90
    .local v9, "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    iget-object v1, v9, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onItemClick"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoFeatureBar;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/tudou/ui/activity/DetailActivity;

    .line 96
    .local v12, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v12}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v10

    .line 97
    .local v10, "mediaPlayerDelegate":Lcom/youku/player/plugin/MediaPlayerDelegate;
    if-eqz v10, :cond_2

    .line 99
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, v9, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v11

    .line 100
    .local v11, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    invoke-virtual {v10, v11}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 103
    .end local v11    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoFeatureBar;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/tudou/ui/activity/DetailActivity;

    .line 104
    .local v14, "tDetailActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v14}, Lcom/tudou/ui/activity/DetailActivity;->getContentPanel()Lcom/tudou/detail/widget/DetailContentPanel;

    move-result-object v13

    .line 105
    .local v13, "tContentPanel":Lcom/tudou/detail/widget/DetailContentPanel;
    invoke-virtual {v14}, Lcom/tudou/ui/activity/DetailActivity;->clearPayPage()V

    .line 106
    if-eqz v13, :cond_3

    .line 107
    iget-object v1, v9, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-virtual {v13, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->setCurrentVideo(Ljava/lang/String;)V

    .line 109
    :cond_3
    const/16 v7, 0x37f

    .line 120
    .local v7, "flag":I
    invoke-virtual {v14}, Lcom/tudou/ui/activity/DetailActivity;->getModel()Lcom/tudou/detail/DetailModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoFeatureBar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v9, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/tudou/detail/DetailModel;->startLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;IZ)V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t1.detail_sdetail.detailclipsvideoclick.1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public setFeature(Lcom/tudou/detail/vo/DetailFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/tudou/detail/vo/DetailFeature;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeature:Lcom/tudou/detail/vo/DetailFeature;

    .line 82
    new-instance v0, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;

    invoke-direct {v0, p0}, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;-><init>(Lcom/tudou/detail/widget/VideoFeatureBar;)V

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeatureAdapter:Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;

    .line 83
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeatureListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeatureAdapter:Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeatureListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoFeatureBar;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 85
    return-void
.end method

.method public setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v6, 0x0

    .line 190
    if-nez p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 192
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    if-eqz v1, :cond_0

    .line 195
    const/4 v4, 0x0

    .line 196
    .local v4, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 197
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 199
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    .end local v2    # "listItem":Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 202
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 203
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeature:Lcom/tudou/detail/vo/DetailFeature;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v2, p1}, Lcom/tudou/detail/vo/DetailFeature;->getFeatureByVid(Ljava/lang/String;)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v0

    .line 68
    .local v0, "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    if-eqz v0, :cond_0

    .line 69
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeature:Lcom/tudou/detail/vo/DetailFeature;

    iget-object v2, v2, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 70
    .local v1, "index":I
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeatureAdapter:Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;

    iput v1, v2, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;->mSelection:I

    .line 71
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeatureAdapter:Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;->notifyDataSetChanged()V

    .line 72
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoFeatureBar;->mFeatureListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 78
    .end local v0    # "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    .end local v1    # "index":I
    :cond_0
    return-void
.end method
