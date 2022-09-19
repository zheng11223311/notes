.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;
.super Landroid/widget/FrameLayout;
.source "FullScreenPlaylistView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;",
            "Lcom/tudou/detail/vo/VideoList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAid:Ljava/lang/String;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mId:Ljava/lang/String;

.field private mIsShow:Z

.field private mLoading:Landroid/view/View;

.field private mPlId:Ljava/lang/String;

.field private mPlayListGrid:Landroid/widget/GridView;

.field private mPlaylistAdapter:Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

.field private mVideoList:Lcom/tudou/detail/vo/VideoList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mIsShow:Z

    return v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updateUI(Lcom/tudou/detail/vo/VideoList;)V
    .locals 5
    .param p1, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    const/4 v4, 0x1

    .line 209
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->TAG:Ljava/lang/String;

    const-string v3, "updateUI"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)V

    .line 213
    .local v0, "key":Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mId:Ljava/lang/String;

    iput-object v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->id:Ljava/lang/String;

    .line 214
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mAid:Ljava/lang/String;

    iput-object v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->aid:Ljava/lang/String;

    .line 215
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlId:Ljava/lang/String;

    iput-object v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->plid:Ljava/lang/String;

    .line 216
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/VideoList;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    .line 220
    .end local v0    # "key":Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;
    :goto_0
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlayListGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 222
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const-string v2, "number"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v3}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlayListGrid:Landroid/widget/GridView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 227
    :goto_1
    new-instance v2, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-direct {v2, v3, v4}, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;-><init>(Landroid/content/Context;Lcom/tudou/detail/vo/VideoList;)V

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlaylistAdapter:Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    .line 228
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlayListGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlaylistAdapter:Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_2
    return-void

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    goto :goto_0

    .line 225
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlayListGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1

    .line 230
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->showLoading(ZZ)V

    goto :goto_2
.end method


# virtual methods
.method public initialize()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->updateUI(Lcom/tudou/detail/vo/VideoList;)V

    .line 174
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 113
    const v0, 0x7f0c0bd6

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mLoading:Landroid/view/View;

    .line 114
    const v0, 0x7f0c0bd7

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mHintView:Lcom/youku/widget/HintView;

    .line 115
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mHintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setBackgroundColor(I)V

    .line 116
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v0, 0x7f0c0bd5

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlayListGrid:Landroid/widget/GridView;

    .line 159
    return-void
.end method

.method public setBaseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "plid"    # Ljava/lang/String;
    .param p4, "isShow"    # Z

    .prologue
    .line 104
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mId:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mAid:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlId:Ljava/lang/String;

    .line 107
    iput-boolean p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mIsShow:Z

    .line 108
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlaylistAdapter:Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v1, p1}, Lcom/tudou/detail/vo/VideoList;->getIndexByVideoId(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlaylistAdapter:Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->setSelection(I)V

    .line 183
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlaylistAdapter:Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    invoke-virtual {v1}, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->notifyDataSetChanged()V

    .line 184
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlayListGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 188
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public setVideoList(Lcom/tudou/detail/vo/VideoList;)V
    .locals 3
    .param p1, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    .line 163
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)V

    .line 165
    .local v0, "key":Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mId:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->id:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mAid:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->aid:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlId:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->plid:Ljava/lang/String;

    .line 168
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v0    # "key":Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;
    :cond_0
    return-void
.end method

.method public showLoading(ZZ)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "error"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 191
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLoading show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlayListGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 206
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    if-nez p2, :cond_1

    .line 199
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 200
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlayListGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 203
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->mPlayListGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method
